## 문제 1: 기본적인 `SELECT` 쿼리 작성
- `employees` 테이블에서 모든 데이터를 조회하는 쿼리를 작성하세요.

SELECT * FROM employees;

## 문제 2: 특정 컬럼만 조회
- `employees` 테이블에서 `name`과 `department` 컬럼만 조회하는 쿼리를 작성하세요.

SELECT name, department FROM employees;

## 문제 3: 조건을 이용한 조회
- 급여가 60,000 이상인 직원을 조회하는 쿼리를 작성하세요.

SELECT * FROM employees WHERE salary >= 60000;

## 문제 4: 정렬을 이용한 조회
- `employees` 테이블에서 급여가 높은 순서로 직원의 이름과 급여를 조회하는 쿼리를 작성하세요.

SELECT name, salaly FROM employees ORDER BY salary DESC;

## 문제 5: 데이터 제한 (`LIMIT`)
- 급여가 높은 상위 3명의 직원만 조회하는 쿼리를 작성하세요.

SELECT * FROM employees ORDER BY salary DESC LIMIT 3;

## 문제 6: `COUNT` 함수 사용
- `employees` 테이블에서 직원의 총 수를 계산하는 쿼리를 작성하세요.

SELECT COUNT(*) AS total_employees FROM employees;

## 문제 7: `AVG` 함수 사용
- `employees` 테이블에서 각 부서별 평균 급여를 조회하는 쿼리를 작성하세요.

SELECT department, AVG(salary) AS '평균 급여' FROM employees GROUP BY department;

## 문제 8: 집계 함수와 조건 결합 (`HAVING`)
- 평균 급여가 70,000 이상인 부서만 조회하는 쿼리를 작성하세요.

SELECT department, AVG(salary) AS '평균 급여'
FROM employees
GROUP BY department
HAVING AVG >= 70000;

## 문제 9: 서브쿼리 사용
- 급여가 가장 높은 직원의 이름과 급여를 조회하는 쿼리를 작성하세요.

SELECT name, salary
FROM employees
WHERE salary = (SELECT MAX(salary) FROM employees);

## 문제 10: `DISTINCT` 사용
- `employees` 테이블에서 중복되지 않은 `department`(부서)를 조회하는 쿼리를 작성하세요.

SELECT DISTINCT department FROM employees;

## 문제 11: `INSERT` 쿼리 작성
- `employees` 테이블에 새로운 직원을 추가하는 쿼리를 작성하세요. 이름은 'Soojin Kim', 부서는 'HR', 급여는 75000입니다.

INSERT INTO employees (id, name, department, salary) VALUES (1, 'Soojin Kim', 'HR', 75000);

## 문제 12: 여러 행 삽입
- `employees` 테이블에 두 명의 직원을 추가하는 쿼리를 작성하세요.
  1. 이름: 'Jihyun Lee', 부서: 'Marketing', 급여: 65000
  2. 이름: 'Minho Park', 부서: 'Sales', 급여: 70000

INSERT INTO employees (id, name, department, salary) VALUES
(2, 'Jihyun Lee', 'Marketing', 65000),
(3, 'Minho Park', 'Sales', 70000);

## 문제 13: `INSERT`와 `SELECT` 결합
- `employees_archive` 테이블에 `Sales` 부서에서 일하는 모든 직원을 복사하는 쿼리를 작성하세요.

INSERT INTO employees_archive (id, name, department, salary)
SELECT id, name, department, salary
FROM employees
WHERE department = 'Sales';

## 문제 14: 기본적인 `UPDATE` 쿼리 작성
- `employees` 테이블에서 'Jihyun Lee'의 급여를 68000으로 수정하는 쿼리를 작성하세요.

UPDATE employees SET salary = 60000 WHERE name = 'Jihyun Lee';

## 문제 15: 여러 컬럼 업데이트
- 'Minho Park'의 부서를 'HR'로 바꾸고, 급여를 72000으로 수정하는 쿼리를 작성하세요.

UPDATE employees SET department = 'HR', salary = 72000 WHERE name = 'Minho Park';

## 문제 16: 조건을 이용한 `UPDATE`
- `Sales` 부서에 속한 모든 직원의 급여를 5% 인상하는 쿼리를 작성하세요.

UPDATE employees SET salary = salary \* 1.05 WHERE department = 'Sales';

## 문제 17: 기본적인 `DELETE` 쿼리 작성
- `employees` 테이블에서 'Soojin Kim'의 데이터를 삭제하는 쿼리를 작성하세요.

DELETE FROM employees WHERE name = 'Soojin Kim';

## 문제 18: 조건을 이용한 다중 삭제
- 급여가 50,000 미만인 모든 직원을 삭제하는 쿼리를 작성하세요.

DELETE FROM employees WHERE salary < 50000;

## 문제 19: `INNER JOIN`을 이용한 조회

- `employees`와 `departments` 테이블을 `INNER JOIN`하여 직원의 이름과 해당 부서명을 조회하는 쿼리를 작성하세요.

SELECT empoyees.name, departments.department_name
FROM employees
INNER JOIN departments
ON employees.department = departments.department_id;

## 문제 20: `LEFT JOIN`을 이용한 조회

- `employees` 테이블에 속한 모든 직원의 이름과, 프로젝트가 있는 경우 해당 프로젝트 이름을 조회하는 쿼리를 작성하세요. 프로젝트가 없는 직원도 포함되도록 하세요.

SELECT employees.name, projects.pjt_name
FROM employees
LEFT JOIN projects
ON employees.id = projects.employee_id;
