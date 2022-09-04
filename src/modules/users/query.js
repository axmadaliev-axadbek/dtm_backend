const GETALL = `
select * from users as u
where case  when $1 > 0 then u.user_id = $1
                            else true
                            end

`
const LOGIN = `
   select * from users as u where u.contact = $1 and u.password = crypt($2, password)
`
const REGISTER = `
INSERT into users(username,fullname, contact,  region, gender, password) VALUES
  ($1, $2, $3,  $4, $5, crypt($6, gen_salt('bf'))) 
returning *
`


 module.exports = {
    LOGIN,   REGISTER,GETALL
 }

// select * from users where username like '%ar%';