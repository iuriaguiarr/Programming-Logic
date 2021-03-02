Program Forca ;   //nomenclatura do programa 
	var p:string;	  // inser??o da vari?vel p-palavra
			a,e:integer;  // a,e -acertos e erros
			x:char;	     // x -caracteres da palavra
	const qe=7;      //quantidade de erros 
	
	procedure palavra;  // cria??o do procedimento palavra onde definimos p como conjunto vazio e realizamos a intera??o com o usu?rio para iniciar o programa
	begin
		p:=''; // definimos p como espaço vazio
		write('Digite a palavra: '); // interação com o usuário 
		repeat     																									  // insere um laço de repetição onde:
			x:=readkey;                                              	 // define x com o valor de readkey
			if ((x<>chr(0))and(x<>chr(8))and(x<>chr(13)))then p:=p+x; // e não permite que as teclas enter, backspace,
				gotoxy(18+length(p),1);write('*');                     // delete, entre outras sejam utilizadas
		until x=chr(13);
	end;
	procedure imppalavra; //criação do procedimento imrpimir palavra
		var y:integer; //Definição da variável y como inteira
	begin
		clrscr;
		gotoxy(5,3);
		for y:=1 to length(p) do	   //esse bloco realiza a impressão dos underlines na posição desejada
			write(' _');			
	end;
	procedure desenho(var ve:integer); //procedimento para mostrar o desenho da forca nas posições
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
				arm:string;  //variável local para armazenamento, acredito que aqui ocorrerá passagem de parâmetros
				en,js:boolean;		//variáveis locais boleanas 
	begin
		a:=0; //igualamos acertos e erros a zero pois é o início do programa
		e:=0; 		
		arm:=''; //armazenar recebe vazio
		desenho(e); 		//concatenamos dessenho e erro para que ao usuário errar seja inserido o desenho que queremos 
		repeat  //criação de um laço de repetição onde inserimos
			en:=false; // a variável encontrar definida como falso
			js:=false; // a variável Já Selecionada definida como falsa
			gotoxy(5,5);write('Digite a letra: '); //interação com usuário
			x:=readkey; //interpretar o comando da letra já lendo a tela
			if arm<>'' then //se o valor da variável armazenar for diferente de vazio 
				begin //inserção de laço com estrutura de repetição for
					for z:=1 to length(arm) do // diz que z vai até o número de caracteres armazenados em arm 
						if arm[z]=x then js:=true; // caso arm de z seja igual a x, a variável js é definida como verdadeira
				end;
			if (arm='')or(js=false) then  //caso arm seja igual a vazio ou js igual a falso, então:
				begin
					for z:=1 to length(p) do //z vai de 1 até o número de caracteres da variável p
						if p[z]=x then //caso p de [z] seja igual a x, então:
							begin
								inc(a); //incrementa 1 na variavel de acertos  
								arm:=arm+x; //define arm igual a arm mais o valor de x
								en:=true; //define en como verdadeira
								gotoxy(4+(z*2),3);write(upcase(x)); // vai até determinada posição e escreve o valor de x em maiúsculo
							end;         				
				end;
			if (en=false)or(js=true) then //caso en seja falsa ou js verdadeira, então:
				begin
					inc(e);	//incrementa 1 na variavel de erros				
					desenho(e);  //imprime o desenho de erros
				end;
		until (a=length(p))or(e=qe);  						//caso o numero de acertos seja igual ao numero de caracteres da palavra
	end;                           						 //ou o numero de erros seja igual a constante de quantidade de erros, o laço  
Begin                             					//de repetição será encerrado.
	palavra;     //Inicia os procedimentos
	imppalavra;
	verificar;
	if a=length(p)then  //caso o numero de acertos seja igual ao numero de caracteres da palavra, então:
		begin
			gotoxy(5,22);write('Parabéns você acertou a palavra!');  //imprima a seguinte mensagem
		end
	else if e=qe then  //caso o numero de erros seja igual a quantidade de erros predefinida, então:
		begin		
			gotoxy(5,22);write('Infelizmente você errou a palavra!'); //imprima a seguinte mensagem
		end;
	readkey;
End.
