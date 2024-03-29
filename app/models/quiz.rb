class Quiz < ApplicationRecord
    # Data is read as hashmap to separate logic from DB
    # To turn object to hashmap, convert obj to hashmap with @object.attributes
    # Return a hash of program ID to similarity

    validates :collaboration, presence: true
    validates :independence, presence: true
    validates :leadership, presence: true
    validates :multitasking, presence: true
    validates :independence, presence: true

def most_similar(user_quiz, all_programs, all_program_reviews)
    # Loop through all_job_reviews and aggregate data in a hashmap.
    aggregate_data = {}
    all_program_reviews.each do |review|
        # if it's in aggregate_data, add it
        if not aggregate_data.key?(review[:program_id])
            aggregate_data[review[:program_id]] = {collaboration: [], independence: [], leadership: [], multitasking: [], compensation: []}
        end
        aggregate_data[review[:program_id]][:collaboration].append(review[:collaboration])
        aggregate_data[review[:program_id]][:independence].append(review[:independence])
        aggregate_data[review[:program_id]][:leadership].append(review[:leadership])
        aggregate_data[review[:program_id]][:multitasking].append(review[:multitasking])
        aggregate_data[review[:program_id]][:compensation].append(review[:compensation])
    end
    # Loop through aggregate_data to find the best person based on quiz object. 
    result = {}
    all_programs.each do |program|
         similarity = 0
        # # All the ways to get 0 similarity
         if !user_quiz[:unpaid] and !program[:paid]
              similarity = 0
          elsif user_quiz[:class_standing] < program[:class_standing]
              similarity = 0
          elsif user_quiz[:season] != program[:season]
              similarity = 0
          elsif user_quiz[:work_auth] == false && program[:work_auth] == false
              similarity = 0
          elsif user_quiz[:job_preference] != program[:field]
              similarity = 0
          else
            #They have no deal breakers, calculate similarity score
            #similarity = 0
            program_collaboration = list_average(aggregate_data[program[:id]][:collaboration])
            similarity += 5 - (user_quiz[:collaboration] - program_collaboration).abs
            program_independence = list_average(aggregate_data[program[:id]][:independence])
            similarity += 5 - (user_quiz[:independence] - program_independence).abs
            program_leadership = list_average(aggregate_data[program[:id]][:leadership])
            similarity += 5 - (user_quiz[:leadership] - program_leadership).abs
            program_multitasking = list_average(aggregate_data[program[:id]][:multitasking])
            similarity += 5 - (user_quiz[:multitasking] - program_multitasking).abs
            if user_quiz[:pay_preference].between?(list_average(aggregate_data[program[:id]][:compensation])-5, list_average(aggregate_data[program[:id]][:compensation])+5)
                similarity += 5 
            end
        end
        # store the similarity
        result[program[:id]] = similarity
        

    end

    results = Array.new
    res = result.sort_by { | program, similarity | similarity }
    res.reverse!
    res.each do |item|
        if item[1] != 0
            results.push(item[0])
        end
    end
    return results
end

def list_average(list)
    list.inject(0) { |x, sum| sum += x } / list.size
end
end
