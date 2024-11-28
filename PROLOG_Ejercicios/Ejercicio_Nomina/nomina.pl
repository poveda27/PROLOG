% Declaración de predicados dinámicos
:- dynamic docente/3.

% Datos de ejemplo
docente(juan_perez, auxiliar).
docente(maria_rodriguez, asociado).
docente(carlos_gomez, titular).
% realcion_salario
salarioIncial(auxiliar,SalarioBase):-
    SalarioBase is 3000000.
salarioIncial(asociado,SalarioBase):-
    SalarioBase is 5000000.
salarioIncial(titular,SalarioBase):-
    SalarioBase is 7000000.

% Deducciones
deduccion_salud(SalarioBase, DeduccionSalud) :-
    DeduccionSalud is SalarioBase * 0.04.

deduccion_pension(SalarioBase, DeduccionPension) :-
    DeduccionPension is SalarioBase * 0.04.

% Bonificaciones
bonificacion(auxiliar, SalarioBase, Bonificacion) :-
    Bonificacion is SalarioBase * 0.05.
bonificacion(asociado, SalarioBase, Bonificacion) :-
    Bonificacion is SalarioBase * 0.1.
bonificacion(titular, SalarioBase, Bonificacion) :-
    Bonificacion is SalarioBase * 0.15.

% Cálculo del salario neto
salario_neto(NombreDocente, SalarioNeto) :-
    docente(NombreDocente, Categoria),
    salarioIncial(Categoria,SalarioBase),
    deduccion_salud(SalarioBase, DeduccionSalud),
    deduccion_pension(SalarioBase, DeduccionPension),
    bonificacion(Categoria, SalarioBase, Bonificacion),
    SalarioNeto is SalarioBase - DeduccionSalud - DeduccionPension + Bonificacion.
