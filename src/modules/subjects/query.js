const GETALL = `
select * from subjects as c
where case  when $1 > 0 then c.subject_id = $1
                            else true
                            end

`


const getFirst = `
  select s.* from faculties as f left join subjects as s on s.subject_id = f.first_subject group by s.subject_id
`
module.exports = {
  getFirst,GETALL
} 
