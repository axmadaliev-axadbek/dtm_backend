const { GETALL, getFirst} = require('./query.js')
const { fetch, fetchAll } = require('../../lib/postgres.js')

const READ = async ({firstSubject = 0, secondSubject = 0}) => {
    try {
        return await fetchAll(GETALL,firstSubject, secondSubject)
    } catch (error) {
        console.log(error)
    }
}



module.exports = {
     READ
}