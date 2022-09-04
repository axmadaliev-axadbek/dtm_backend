const getByUserId = `
select 
r.*,
(select university_name from universities where university_id = (select university_id from faculties where faculty_id = r.faculty_id)),
(select faculty_name from faculties where faculty_id = r.faculty_id),
(select contract_score from faculties where faculty_id = r.faculty_id),
(select 
    case
        when r.score_ball <= contract_score then 'Tavsiya etilmadi' 
        when grant_score <= r.score_ball then 'Davlat granti' 
        else 'Shartnoma asosida'  
    end
from faculties where faculty_id = r.faculty_id
) as type_of_education
from results as r where case  when $1 > 0 then r.user_id = $1
                            else true
                            end
`

const getByResultId = `
select 
    r.*,
    (select university_name from universities where university_id = (select university_id from faculties where faculty_id = r.faculty_id)),
    (select faculty_name from faculties where faculty_id = r.faculty_id),
    (select grant_score from faculties where faculty_id = r.faculty_id),
    (select contract_score from faculties where faculty_id = r.faculty_id),
    (select subject_name from subjects where subject_id = r.first_subject_id) as first_subject_name,
    (select subject_name from subjects where subject_id = r.second_subject_id) as second_subject_name,
    (select 
        case
            when grant_score <= r.score_ball then 'Davlat granti' 
            else 'Shartnoma asosida'    
        end
    from faculties where faculty_id = r.faculty_id
    ) as type_of_education
        
from results as r where case  when $1 > 0 then r.result_id = $1
                            else true
                            end
`


const getHighestResults = `
        select 
            r.*,
            (select faculty_name from faculties where faculty_id = r.faculty_id),
            (select fullname from users where user_id = r.user_id),
            (select 
                case
                    when grant_score <= r.score_ball then 'Davlat granti' 
                    else 'Shartnoma asosida'  
                end
            from faculties where faculty_id = r.faculty_id
            ) as education
        from results as r order by r.score_ball desc
        `


const postResults =  `

    insert into results(first_subject, second_subject, score_ball, time, user_id, faculty_id, first_tests_result, second_tests_result, first_subject_id, second_subject_id) values
    ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10) 
    returning *
`
module.exports = {
  getByResultId, getByUserId, getHighestResults, postResults
} 
