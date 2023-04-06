# names of employee who work in IT department

select first_name, last_name
from employees
where department_id = (select department_id
                        from departments 
                        where department_name="IT");
                        
 # name of employees whose salary is greater than average salary of all employees
 
 select first_name, last_name
 from employees
 where salary > (select avg(salary)
            from employees);
            
 # names of the employees whose salary is equal to the min of job_id
 
  select first_name, last_name
 from employees
 where salary = (select min_salary
                  from jobs
                  where employees.job_id=jobs.job_id);

 
 
 
