const { getByUserId, getByResultId, getHighestResults, postResults} = require('./query.js')
const { fetch, fetchAll } = require('../../lib/postgres.js')

const readByUser = async ({userId = 1}) => {
    try {
        return await fetchAll(getByUserId, userId)
    } catch (error) {
        console.log(error)
    }
}


const readByResult = async ({resultId = 0}) => {
    try {
        return await fetchAll(getByResultId, resultId)
    } catch (error) {
        console.log(error)
    }
}

const  readHighestResults = async () => {
    try {
        return await fetchAll(getHighestResults)
    } catch (error) {
        console.log(error)
    }
}
const sendResult = async ({first_subject, second_subject, score_ball, time,  faculty_id, first_tests_result, second_tests_result, first_subject_id, second_subject_id, user_id}) => {
    try {
        return await fetchAll(postResults, first_subject, second_subject, score_ball , time, user_id, faculty_id, first_tests_result, second_tests_result, first_subject_id, second_subject_id)
    } catch (error) {
        console.log(error)
    }
}
module.exports = {
    readByUser, readByResult, readHighestResults, sendResult
}