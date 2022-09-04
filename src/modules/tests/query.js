const GETALL = `
(
  select s.*, json_agg(q.* order by question_id) as tests from subjects as s 
  left join questions as q on s.subject_id = q.subject_id 
  where q.subject_id = $1 group by s.subject_id
)
union all
(
  select s.*, json_agg(q.* order by random()) as tests from subjects as s 
  left join questions as q on s.subject_id = q.subject_id 
  where q.subject_id = $2 group by s.subject_id
)

`


const getFirst = `
  select s.* from faculties as f left join faculties as s on s.subject_id = f.first_subject group by s.subject_id
`
module.exports = {
  getFirst,GETALL
} 
