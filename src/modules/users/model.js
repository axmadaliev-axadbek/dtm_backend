const { LOGIN, REGISTER, GETALL, DELETE} = require('./query.js')
const { fetch, fetchAll } = require('../../lib/postgres.js')

const ALLUSERS = async ({id = 0}) => {
    try {
        return await fetchAll(GETALL, id)
    } catch (error) {
        console.log(error)
    }
}
const LOGINPROFILE = async ({contact, password}) => {
    try {
        return await fetch(LOGIN, contact, password)
    } catch (error) {
        console.log(error)
    }
}

const REGISTERACCOUNT = async ( {username,fullname, contact,  region, gender, password}) => {
    try {
        let user = await fetch(REGISTER, username,fullname, contact,  region, gender, password)
        console.log(user);
        return user
    } catch (error) {
        console.log(error)
    }
}




module.exports = {
    LOGINPROFILE, REGISTERACCOUNT, ALLUSERS
}