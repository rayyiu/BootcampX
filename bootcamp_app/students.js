const { Pool } = require('pg');

const pool = new Pool({
    user: 'postgres',
    password: 'postgres',
    host: 'localhost',
    database: 'bootcampx'
});

const cohortName = process.argv[2];
const max = process.argv[3] || 5;
const values = [`%${cohortName}%`, max];


pool.query(`SELECT students.id as student_id, students.name as name, cohorts.name as cohort
    FROM students
    JOIN cohorts ON students.cohort_id = cohorts.id
    WHERE cohorts.name LIKE $1
    LIMIT $2;
  `, values)
    .then(res => {
        console.log(res);
    })
    .catch(err => console.error('query error', err.stack));