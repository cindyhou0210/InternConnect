require 'minitest/autorun'
require_relative '../../lib/quiz_algorithm'

class AlgoTest < Minitest::Test
  def test_aggregate_data
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

    user_quiz = {unpaid: true, job_preference: 'test', work_auth: true, collaboration: 5, independence: 2, leadership: 4, multitasking: 3, class_standing: 3, season: 'Spring', pay_preference: 30}

    assert_equal most_similar(user_quiz, all_programs, all_program_reviews), {1=>22, 2=>19, 3=>19}
  end
  def test_no_results_season
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

    user_quiz = {unpaid: true, job_preference: 'test', work_auth: true, collaboration: 5, independence: 2, leadership: 4, multitasking: 3, class_standing: 3, season: 'Fall', pay_preference: 30}

    assert_equal most_similar(user_quiz, all_programs, all_program_reviews), {}
  end
  def test_no_results_unpaid
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

    user_quiz = {unpaid: false, job_preference: 'test', work_auth: true, collaboration: 5, independence: 2, leadership: 4, multitasking: 3, class_standing: 3, season: 'Fall', pay_preference: 30}

    assert_equal most_similar(user_quiz, all_programs, all_program_reviews), {}
  end
  def test_no_results_class_standing
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

    user_quiz = {unpaid: false, job_preference: 'test', work_auth: true, collaboration: 5, independence: 2, leadership: 4, multitasking: 3, class_standing: 2, season: 'Spring', pay_preference: 30}

    assert_equal most_similar(user_quiz, all_programs, all_program_reviews), {}
  end
  def test_no_results_work_auth
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

    user_quiz = {unpaid: false, job_preference: 'test', work_auth: false, collaboration: 5, independence: 2, leadership: 4, multitasking: 3, class_standing: 3, season: 'Spring', pay_preference: 30}

    assert_equal most_similar(user_quiz, all_programs, all_program_reviews), {}
  end
end
