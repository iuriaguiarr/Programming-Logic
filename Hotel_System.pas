Program HotelHuanda;
	var a,q,op,imp:integer;
	    hotel:array[1..5,1..4]of string;
	    sequencia:boolean;
///////////////////////////////////////////////////////////////////	
	procedure iniciar;
	begin
		for a:=1 to 5 do
			for q:=1 to 4 do
				hotel[a,q]:='LIVRE';
	end;  
///////////////////////////////////////////////////////////////////	
	procedure testarquarto;
	begin
		q:=0;
		while (q<=0)or(q>4)do 
			begin
				clrscr;
				write('Digite o quarto desejado: ');
				read(q);
				if (q<=0)or(q>4)then 
					begin
						write('Quarto inválido!');
						readkey;						 	
					end;
			end;	
	end;
///////////////////////////////////////////////////////////////////	
	procedure testarandar;
	begin
		a:=0;
		while (a<=0)or(a>5)do 
			begin
				clrscr;
				write('Digite o andar desejado: ');
				read(a);
				if (a<=0)or(a>5)then 
					begin
						write('Andar inválido!');
						readkey;						 	
					end;
			end;	
	end;
///////////////////////////////////////////////////////////////////	
	procedure liberarquarto;
	begin
		if (hotel[a,q]='OCUPADO') or (hotel[a,q]='RESERVADO') then
			begin
				hotel[a,q]:='LIVRE';
				write('Quarto ',q,' do ',a,'º Andar foi liberado com sucesso!');
			end
		else
			write('Esse quarto já encontra-se liberado!');
			readkey;	
	end;
///////////////////////////////////////////////////////////////////	
	procedure cadastraraleatorio;
	begin
		if (hotel[a,q]='LIVRE') or (hotel[a,q]='RESERVADO') then
			begin
				hotel[a,q]:='OCUPADO';
				write('Quarto ',q,' do ',a,'º Andar foi ocupado com sucesso!');
			end
		else
			write('Esse quarto já encontra-se ocupado!');
			readkey;		
	end;
///////////////////////////////////////////////////////////////////	
	procedure cadastrarsequencia;
	begin
		a:=1;
    q:=0;
    sequencia:=false;
    while (sequencia=false) and ((a<5) or (q<4)) do
      begin
      	if (q=4) and (a<5) then
      		begin
      			inc(a);
      			q:=1;
      		end
      	else if (q<4) then
      		inc(q);
				if hotel[a,q]='LIVRE' then
					begin
						sequencia:=true;
						hotel[a,q]:='OCUPADO';
						gotoxy(15,15); write('',q,'º quarto do ',a,'º andar foi ocupado com sucesso!');
						readkey;
					end;
			end;
				if (a=5) and (sequencia=false) then
					begin
						gotoxy(15,15); write('Todos os quartos encontram-se ocupados!');
						readkey;
					end;
	end;
///////////////////////////////////////////////////////////////////	
	procedure consultarquarto;
	begin
		if hotel[a,q]='OCUPADO' then
			begin
				write('Quarto ',q,' do ',a,'º, está ' ,hotel[a,q], '');
			end
		else
			write('Quarto ',q,' do ',a,'º, está ' ,hotel[a,q], '');
			readkey;
	end;
///////////////////////////////////////////////////////////////////	
	procedure imprimir(var vimp:integer);
	begin
		for a:=1 to 5 do
			begin
			 	writeln(a,'º Andar');
		for q:=1 to 4 do
			case vimp of
				5:begin
						if hotel[a,q]='LIVRE' then
							writeln('   Quarto ',q,' = ',hotel[a,q]);
						end;
				6:begin
						if hotel[a,q]='OCUPADO' then
							writeln('   Quarto ',q,' = ',hotel[a,q]);
						end;
				7:begin
						if hotel[a,q]='RESERVADO' then
							writeln('   Quarto ',q,' = ',hotel[a,q]);
					end;
				8:begin
						writeln('   Quarto ',q,' = ',hotel[a,q]);
					end;
			end;
	end;
	readkey;
	end;
///////////////////////////////////////////////////////////////////
	procedure reservar;
	begin
		if hotel[a,q]='LIVRE' then
			begin
				hotel[a,q]:='RESERVADO';
				write('Quarto ',q,' do ',a,'º Andar foi reservado com sucesso!');
			end
		else
			write('Esse quarto já encontra-se ocupado!');
			readkey;
	end;
/////////////////////////////////////////////////////////////////////
	procedure menu;
	begin
		textcolor(white);
		textbackground(black);
		clrscr;
		gotoxy(85,22);write('+--------------------------+');
		gotoxy(85,23);write('|                          |');		
		gotoxy(85,24);write('|      Menu Principal      |');
		gotoxy(85,25);write('|                          |');
		gotoxy(85,26);write('|  1. Cadastro Sequencial  |');
		gotoxy(85,27);write('|  2. Cadastro Aleatório   |');		
		gotoxy(85,28);write('|  3. Consultar Quarto     |');
		gotoxy(85,29);write('|  4. Liberar Quarto       |');
		gotoxy(85,30);write('|  5. Imprim. Livres       |');
		gotoxy(85,31);write('|  6. Imprim. Ocupados     |');
		gotoxy(85,32);write('|  7. Imprim. Reservados   |');
		gotoxy(85,33);write('|  8. Imprim. Geral        |');
		gotoxy(85,34);write('|  9. Reservar             |');
		gotoxy(85,35);write('|  10. Sair                |');
		gotoxy(85,36);write('|                          |');
		gotoxy(85,37);write('|  Escolha a Opção [  ]    |');
		gotoxy(85,38);write('|                          |');
		gotoxy(85,39);write('+--------------------------+'); 
	end;
///////////////////////////////////////////////////////////////////
Begin
  iniciar;
	repeat
		menu;
		gotoxy(105,37);read(op);
		clrscr;
		case op of
		1:begin
			cadastrarsequencia;
			end;						
		2:begin
				testarandar;
				testarquarto;
				cadastraraleatorio;
			end;
		3:begin
				testarandar;
				testarquarto;
       	consultarquarto;
			end;	
		4:begin
				testarandar;
				testarquarto;
				liberarquarto;
			end;	
		5:begin
			imp:=5;
			imprimir(imp);
			end;
		6:begin
			imp:=6;
			imprimir(imp);
			end;
		7:begin
			imp:=7;
			imprimir(imp);
			end;			
		8:begin
			imp:=8;
			imprimir(imp);
			end;
		9:begin
				testarandar;
				testarquarto;
				reservar;
			end;	
	end;
  until op=10;
  clrscr;
  textcolor(yellow);
	gotoxy(15,15);write('Sistema finalizado com sucesso!');
	readkey;
End.