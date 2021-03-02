Program registro ;
	type
		aluno = record
			matricula:integer;
			nome:string[50];
			sexo:char;
			curso:string[30];
			turno:string[15];
			turma:integer;			
		end;
	
	const maxli=50;	
	var al:aluno;
			tbaluno:array[1..maxli]of aluno;
			op,mat,y,x:integer;
			nome:string;
		
	procedure menu;
	begin
		clrscr;
		textcolor(yellow);
		textbackground(blue);
		gotoxy(15,15);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');
		gotoxy(15,16);write('§§                                  §§');
		gotoxy(15,17);write('§§           MENU PRINCIPAL         §§');
		gotoxy(15,18);write('§§                                  §§');
		gotoxy(15,19);write('§§   1 - CADASTRAR                  §§');
		gotoxy(15,20);write('§§   2 - CONSULTAR                  §§');
		gotoxy(15,21);write('§§   3 - ALTERAR                    §§');
		gotoxy(15,22);write('§§   4 - EXCLUIR                    §§');
		gotoxy(15,23);write('§§   5 - IMPRIMIR                   §§');
		gotoxy(15,24);write('§§   6 - SAIR                       §§');
		gotoxy(15,25);write('§§                                  §§');
		gotoxy(15,26);write('§§   DIGITE A OPÇÃO DESEJADA [ ]    §§');
		gotoxy(15,27);write('§§                                  §§');
		gotoxy(15,28);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');			
	end;
	
	procedure menucadastrar;
	begin
		clrscr;
		textcolor(yellow);
		textbackground(blue);
		gotoxy(15,15);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');
		gotoxy(15,16);write('§§                                         §§');
		gotoxy(15,17);write('§§  1-NOVO 2-SAIR [ ]                      §§');
		gotoxy(15,18);write('§§                                         §§');
		gotoxy(15,19);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');                                         
  	gotoxy(15,20);write('§§                                         §§');
		gotoxy(15,21);write('§§            CADASTRO DE ALUNO            §§');
		gotoxy(15,22);write('§§                                         §§');
		gotoxy(15,23);write('§§  MATRICULA: ____________________        §§');
		gotoxy(15,24);write('§§  NOME: _________________________        §§');
		gotoxy(15,25);write('§§  SEXO: __                               §§');
		gotoxy(15,26);write('§§  CURSO: ________________________        §§');
		gotoxy(15,27);write('§§  TURNO: ____________                    §§');
		gotoxy(15,28);write('§§  TURMA: ____________                    §§');
		gotoxy(15,29);write('§§                                         §§');
		gotoxy(15,30);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');
		gotoxy(15,31);write('§§                                         §§');
		gotoxy(15,32);write('§§                                         §§');
		gotoxy(15,33);write('§§                                         §§');
		gotoxy(15,34);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');					
	end;

	procedure consultarmatricula(var variavelmatricula:integer);
	begin
	clrscr;
	write('Digite o numero da matricula: ');
	read(variavelmatricula);
	if (variavelmatricula)=mat then
	clrscr;
		gotoxy(15,x+0);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');                                         
		gotoxy(15,x+1);write('§§                                         §§');
		gotoxy(15,x+2);write('§§  MATRICULA: ____________________        §§');
		gotoxy(15,x+3);write('§§  NOME: _________________________        §§');
		gotoxy(15,x+4);write('§§  SEXO: __                               §§');
		gotoxy(15,x+5);write('§§  CURSO: ________________________        §§');
		gotoxy(15,x+6);write('§§  TURNO: ____________                    §§');
		gotoxy(15,x+7);write('§§  TURMA: ____________                    §§');
		gotoxy(15,x+8);write('§§                                         §§');		
		gotoxy(15,x+9);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');
		//Extraindo do vetor a informação desejada 
		gotoxy(30,x+2);write(tbaluno[mat].matricula);
		gotoxy(25,x+3);write(tbaluno[mat].nome);
		gotoxy(25,x+4);write(tbaluno[mat].sexo);
		gotoxy(26,x+5);write(tbaluno[mat].curso);
		gotoxy(26,x+6);write(tbaluno[mat].turno);
		gotoxy(26,x+7);write(tbaluno[mat].turma);
		readkey;
	
	end;
	
	procedure consultarnome(var variavelnome:string);
	 begin
	 clrscr;
	 write('Digite o nome que deseja consultar: ');
	 read(variavelnome);
	 if (variavelnome)=nome then
	   clrscr;
		 gotoxy(15,x+0);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');                                         
		 gotoxy(15,x+1);write('§§                                         §§');
		 gotoxy(15,x+2);write('§§  MATRICULA: ____________________        §§');
		 gotoxy(15,x+3);write('§§  NOME: _________________________        §§');
		 gotoxy(15,x+4);write('§§  SEXO: __                               §§');
		 gotoxy(15,x+5);write('§§  CURSO: ________________________        §§');
		 gotoxy(15,x+6);write('§§  TURNO: ____________                    §§');
		 gotoxy(15,x+7);write('§§  TURMA: ____________                    §§');
		 gotoxy(15,x+8);write('§§                                         §§');		
		 gotoxy(15,x+9);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');
		//Extraindo do vetor a informação desejada 
		 gotoxy(30,x+2);write(tbaluno[mat].matricula);
		 gotoxy(25,x+3);write(tbaluno[mat].nome);
		 gotoxy(25,x+4);write(tbaluno[mat].sexo);
		 gotoxy(26,x+5);write(tbaluno[mat].curso);
		 gotoxy(26,x+6);write(tbaluno[mat].turno);
		 gotoxy(26,x+7);write(tbaluno[mat].turma);
		readkey;
	
	end;
	
	procedure imprimir(var m:integer);
	begin
		//Desenho de tela
		clrscr;
		for y:=1 to mat do 
		begin 
		inc(x,11);
		gotoxy(15,x+0);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');                                         
		gotoxy(15,x+1);write('§§                                         §§');
		gotoxy(15,x+2);write('§§  MATRICULA: ____________________        §§');
		gotoxy(15,x+3);write('§§  NOME: _________________________        §§');
		gotoxy(15,x+4);write('§§  SEXO: __                               §§');
		gotoxy(15,x+5);write('§§  CURSO: ________________________        §§');
		gotoxy(15,x+6);write('§§  TURNO: ____________                    §§');
		gotoxy(15,x+7);write('§§  TURMA: ____________                    §§');
		gotoxy(15,x+8);write('§§                                         §§');		
		gotoxy(15,x+9);write('§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§');
		//Extraindo do vetor a informação desejada 
		gotoxy(30,x+2);write(tbaluno[y].matricula);
		gotoxy(25,x+3);write(tbaluno[y].nome);
		gotoxy(25,x+4);write(tbaluno[y].sexo);
		gotoxy(26,x+5);write(tbaluno[y].curso);
		gotoxy(26,x+6);write(tbaluno[y].turno);
		gotoxy(26,x+7);write(tbaluno[y].turma);
		end;
		readkey; 
	end;
	
	procedure cadastrar;
		var o:integer;
	begin
		repeat
			menucadastrar;
			gotoxy(34,17);read(o);
			if o=1 then
				begin
					inc(mat);
					gotoxy(30,23);write(mat);
					al.matricula:=mat;
					gotoxy(25,24);read(al.nome);
					gotoxy(25,25);read(al.sexo);
					gotoxy(26,26);read(al.curso);
					gotoxy(26,27);read(al.turno);
					gotoxy(26,28);read(al.turma);
				  //salvando registro						
					tbaluno[mat]:=al;
					textcolor(red);
					gotoxy(27,32);write('Registro salvo!');
					delay(1000);							
					textcolor(yellow);
					gotoxy(15,32);write('§§                                         §§');
					gotoxy(34,17);write(' ');
					gotoxy(34,17);read(o);					
				end
			else
				begin	 				
					textcolor(red);
					gotoxy(27,32);write('Saindo...');
					delay(1000);
				end;
		until (o=2);
	end;
//Inicio do programa
Begin
  repeat
		menu;
		gotoxy(45,26);read(op);
		case op of
			1:cadastrar;
			2:begin
			    consultarnome(nome);
			    consultarmatricula(mat);
				end;
			5:imprimir(mat);				
		end;
	until op=6;
	clrscr;
	gotoxy(15,15);write('Sistema finalizado com sucesso!');
	readkey;
End.