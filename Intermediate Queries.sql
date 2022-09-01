-- % for any # of character, _ for one character 
 -- Find any client's who are an LLC
 select * from client where client_name like '%LLC';
 select * from branch_supplier where supplier_name LIKE '% Lables%';
 
 -- Find an employee born in october
 select * from employee where birth_day like '____-10%';
 
 