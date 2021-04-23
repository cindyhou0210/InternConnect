# Data is read as hashmap to separate logic from DB
# To turn object to hashmap, convert obj to hashmap with @object.attributes
# Return a hash of program ID to similarity
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
    for all_programs.each do |program|
        similarity = 0
        # All the ways to get 0 similarity
        if !user_quiz[:unpaid] and !program[:paid]
            similarity = 0
        elsif user_quiz[:class_standing] != program[:class_standing]
            similarity = 0
        else
            # They have no deal breakers, calculate similarity score
            similarity = 0
            program_collaboration = list_average(aggregate_data[program.program_id][:collaboration])
            similarity += 5 - (user_quiz[:collaboration] - program_collaboration).abs
            program_independence = list_average(aggregate_data[program.program_id][:independence])
            similarity += 5 - (user_quiz[:independence] - program_independence).abs
            program_leadership = list_average(aggregate_data[program.program_id][:leadership)
            similarity += 5 - (user_quiz[:leadership] - program_leadership).abs
            program_multitasking = list_average(aggregate_data[program.program_id][:multitasking)
            similarity += 5 - (user_quiz[:multitasking] - program_multitasking).abs
            #todo: add pay preference 
        # store the similarity
        result[program.program_id] = similarity
    end
    return result
end

all_program_reviews = [
    {user_id: 1, program_id: 1, collaboration: 5, independence: 5, leadership: 5, multitasking: 5, compensation: 40},
    {user_id: 2, program_id: 1, collaboration: 4, independence: 1, leadership: 5, multitasking: 2, compensation: 30},
    {user_id: 3, program_id: 1, collaboration: 3, independence: 5, leadership: 3, multitasking: 5, compensation: 25},
    {user_id: 3, program_id: 2, collaboration: 5, independence: 5, leadership: 3, multitasking: 5, compensation: 25},
    {user_id: 3, program_id: 2, collaboration: 5, independence: 5, leadership: 3, multitasking: 5, compensation: 25},
    {user_id: 3, program_id: 3, collaboration: 5, independence: 5, leadership: 3, multitasking: 5, compensation: 25},
    {user_id: 3, program_id: 3, collaboration: 5, independence: 5, leadership: 3, multitasking: 5, compensation: 25},
]

all_programs = [
    {program_id: 1, name: 'Google', field: 'Tech', paid: true, work_auth: false, class_standing: 3, season: 'Spring'},
    {program_id: 2, name: 'Yahoo', field: 'Tech', paid: true, work_auth: false, class_standing: 3, season: 'Spring'},
    {program_id: 3, name: 'YouTube', field: 'Tech', paid: true, work_auth: false, class_standing: 3, season: 'Spring'}
]

user_quiz = {unpaid: true, job_preference: 'test', work_auth: true, collaboration: 5, independence: 2, leadership: 4, multitasking: 3, class_standing: 3}

print(most_similar(user_quiz, all_programs, all_program_reviews))