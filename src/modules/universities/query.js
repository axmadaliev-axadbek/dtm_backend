// const GETALL = `
// select * from universities as c
// where case  when $1 > 0 then c.university_id = $1
//                             else true
//                             end

// `

const GETALL = `
      select u.*, json_agg(f.*) as faculties from faculties as f left join universities as u 
        on u.university_id = f.university_id 
        where case  when $1 > 0 and $2 > 0 then f.first_subject = $1 and f.second_subject = $2
        else true
        end 
        group by u.university_id
        ORDER BY u.university_id
        

`


const getFirst = `
  select s.* from universities as f left join universities as s on s.university_id = f.first_subject group by s.university_id
`
module.exports = {
  getFirst,GETALL
} 
