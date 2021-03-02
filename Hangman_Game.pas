Program Forca ;   //nomenclatura do programa 
	var p:string;	  // inser??o da vari?vel p-palavra
			a,e:integer;  // a,e -acertos e erros
			x:char;	     // x -caracteres da palavra
	const qe=7;      //quantidade de erros 
	
	procedure palavra;  // cria??o do procedimento palavra onde definimos p como conjunto vazio e realizamos a intera??o com o usu?rio para iniciar o programa
	begin
		p:=''; // definimos p como espa�o vazio
		write('Digite a palavra: '); // intera��o com o usu�rio 
		repeat     																									  // insere um la�o de repeti��o onde:
			x:=readkey;                                              	 // define x com o valor de readkey
			if ((x<>chr(0))and(x<>chr(8))and(x<>chr(13)))then p:=p+x; // e n�o permite que as teclas enter, backspace,
				gotoxy(18+length(p),1);write('*');                     // delete, entre outras sejam utilizadas
		until x=chr(13);
	end;
	procedure imppalavra; //cria��o do procedimento imrpimir palavra
		var y:integer; //Defini��o da vari�vel y como inteira
	begin
		clrscr;
		gotoxy(5,3);
		for y:=1 to length(p) do	   //esse bloco realiza a impress�o dos underlines na posi��o desejada
			write(' _');			
	end;
	procedure desenho(var ve:integer); //procedimento para mostrar o desenho da forca nas posi��es
	begin		
		case ve of
		0:begin
				gotoxy(5,15);write('      |======|    ');
				gotoxy(5,16);write('      |      |    ');			
				gotoxy(5,17);write('      |           ');
				gotoxy(5,18);write('      |           ');						
				gotoxy(5,19);write('      |           ');			
				gotoxy(5,20);write('      |           ');
			end;
		1:begin 
				gotoxy(5,17);write('      |      o    ');
			end;
		2:begin
				gotoxy(5,18);write('      |      |    ');
			end;
		3:begin
				gotoxy(5,18);write('      |     /|    ');
			end;
		4:begin
				gotoxy(5,18);write('      |     /|\   ');
			end;
		5:begin
				gotoxy(5,19);write('      |      |    ');
			end;
		6:begin
				gotoxy(5,20);write('      |     /     ');
			end;
		7:begin
				gotoxy(5,20);write('      |     / \   ');
			end;
		end;			
	end;	
	procedure verificar;// procedimento criado para verificar as letras presentes na palavra
		var z:integer;
				arm:string;  //vari�vel local para armazenamento, acredito que aqui ocorrer� passagem de par�metros
				en,js:boolean;		//vari�veis locais boleanas 
	begin
		a:=0; //igualamos acertos e erros a zero pois � o in�cio do programa
		e:=0; 		
		arm:=''; //armazenar recebe vazio
		desenho(e); 		//concatenamos dessenho e erro para que ao usu�rio errar seja inserido o desenho que queremos 
		repeat  //cria��o de um la�o de repeti��o onde inserimos
			en:=false; // a vari�vel encontrar definida como falso
			js:=false; // a vari�vel J� Selecionada definida como falsa
			gotoxy(5,5);write('Digite a letra: '); //intera��o com usu�rio
			x:=readkey; //interpretar o comando da letra j� lendo a tela
			if arm<>'' then //se o valor da vari�vel armazenar for diferente de vazio 
				begin //inser��o de la�o com estrutura de repeti��o for
					for z:=1 to length(arm) do // diz que z vai at� o n�mero de caracteres armazenados em arm 
						if arm[z]=x then js:=true; // caso arm de z seja igual a x, a vari�vel js � definida como verdadeira
				end;
			if (arm='')or(js=false) then  //caso arm seja igual a vazio ou js igual a falso, ent�o:
				begin
					for z:=1 to length(p) do //z vai de 1 at� o n�mero de caracteres da vari�vel p
						if p[z]=x then //caso p de [z] seja igual a x, ent�o:
							begin
								inc(a); //incrementa 1 na variavel de acertos  
								arm:=arm+x; //define arm igual a arm mais o valor de x
								en:=true; //define en como verdadeira
								gotoxy(4+(z*2),3);write(upcase(x)); // vai at� determinada posi��o e escreve o valor de x em mai�sculo
							end;         				
				end;
			if (en=false)or(js=true) then //caso en seja falsa ou js verdadeira, ent�o:
				begin
					inc(e);	//incrementa 1 na variavel de erros				
					desenho(e);  //imprime o desenho de erros
				end;
		until (a=length(p))or(e=qe);  						//caso o numero de acertos seja igual ao numero de caracteres da palavra
	end;                           						 //ou o numero de erros seja igual a constante de quantidade de erros, o la�o  
Begin                             					//de repeti��o ser� encerrado.
	palavra;     //Inicia os procedimentos
	imppalavra;
	verificar;
	if a=length(p)then  //caso o numero de acertos seja igual ao numero de caracteres da palavra, ent�o:
		begin
			gotoxy(5,22);write('Parab�ns voc� acertou a palavra!');  //imprima a seguinte mensagem
		end
	else if e=qe then  //caso o numero de erros seja igual a quantidade de erros predefinida, ent�o:
		begin		
			gotoxy(5,22);write('Infelizmente voc� errou a palavra!'); //imprima a seguinte mensagem
		end;
	readkey;
End.
