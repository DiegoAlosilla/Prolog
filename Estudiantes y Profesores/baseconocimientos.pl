%BASE DE CONOCIMIENTOS
%Estudiantes Nombre, Universidad, Estado
estudiantes('carlos','upc','matriculado').
estudiantes('patricia','upc','no matriculado').
estudiantes('julia','esan','matriculado').

%Doncentes
docentes('guerra',1000,'contratado').
docentes('pedro',2000,'contratado').
docentes('david',3000,'contratado').

%Administrativos
administrativos('flavio','contratado').
administrativos('sara','contratado').
administrativos('mel','contratado').

%Listar Datos

listarEstudiantes(A):-
     estudiantes(A,_,_).

listarDocentes(A):-
    docentes(A,_,_).

listarAdministrativos(A):-
    administrativos(A,_).

listarTodo(A):-
    listarEstudiantes(A);
    listarDocentes(A);
    listarAdministrativos(A).

%Considere el mismo cuerpo de conocimiento e implemente la regla
% para buscar un estudiante, docente y administrativo si se encuentra
% registrado o no.
buscarEstudiante(A,B):-
    estudiantes(A,_,B).
buscarDocente(A,B):-
    docentes(A,_,B).
buscarAdministrativo(A,B):-
    administrativos(A,B).

%Listar docentes con pago mayor o igual a 2000


listarDocentesPago(A):-
     docentes(A,B,_),
     B >= 2000, docentes(A,_,_).

%Listar estudiantes que son de la UPC y que están matriculados

listarEstudiantesMatriculadosUpc(A):-
      estudiantes(A,upc,matriculado).

%Listar estudiantes matriculados pero que no sean de la UPC

listarEstudiantesMatriculados(A):-
      estudiantes(A,C,matriculado),
      C \= upc , estudiantes(A,_,_).


















