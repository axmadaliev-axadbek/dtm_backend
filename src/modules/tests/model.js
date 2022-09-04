const { GETALL, getFirst} = require('./query.js')
const { fetch, fetchAll } = require('../../lib/postgres.js')

const READ = async ({firstSubject = 1, secondSubject = 2}) => {
    try {
        return await fetchAll(GETALL, firstSubject, secondSubject)
    } catch (error) {
        console.log(error)
    }
}


const readFirst = async ({id = 0}) => {
    try {
        return await fetchAll(getFirst, id)
    } catch (error) {
        console.log(error)
    }
}


module.exports = {
     READ, readFirst
}