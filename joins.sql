SELECT * FROM departamentos
INNER JOIN empleados ON departamentos.Id = empleados.DepartamentoId;

/* Podemos hacer referencia a un tabla mediante un alias como :*/
SELECT * FROM departamentos d
INNER JOIN empleados e ON d.Id = e.DepartamentoId;

/*Se renombra solo durante la consulta*/
SELECT Id,e.Nombre,d.Nombre AS "Nombre de departamento" FROM departamentos d
INNER JOIN empleados e ON d.Id = e.DepartamentoId;

/*LEFT JOIN -- trae la información de la tabla A(izq), aunque no haya intersección*/
SELECT Id,e.Nombre,d.Nombre AS "Nombre de departamento" FROM departamentos d
LEFT JOIN empleados e ON d.Id = e.DepartamentoId;

/*RIGHT JOIN -- trae la información de la tabla B(der), aunque no haya intersección*/
SELECT Id,e.Nombre,d.Nombre AS "Nombre de departamento" FROM departamentos d
RIGHT JOIN empleados e ON d.Id = e.DepartamentoId;

/*FULL JOIN -- trae la información de la tabla B(der), aunque no haya intersección*/
SELECT Id,e.Nombre,d.Nombre AS "Nombre de departamento" FROM departamentos d
FULL OUTER JOIN empleados e ON d.Id = e.DepartamentoId;

/*Id del departamento, nombre de departamento y número de personas por departamento*/
SELECT Id,departamentos.Nombre, COUNT(DepartamentoId) AS "Número de empleados" FROM departamentos
INNER JOIN empleados ON DepartamentoId=Id GROUP BY Id;
