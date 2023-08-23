programa
{
	inclua biblioteca Tipos-->t
	inclua biblioteca Util-->u
	
	
	cadeia decisao

	funcao inicio() {
		
		
		
		
		escreva ("voce acorda em uma casa abandonada sozinho\n") 
		u.aguarde(300)
		escreva ("voce se levanta nao se lembra de nada e nem como voce esta ai\n")
		u.aguarde(300)
		escreva ("voce ve um espelho e se ve refletido nele\n")

		aguardar(5)

		printaGhoul()

		escreva("\n\n")
		
		escreva ("voce ve uma porta aparentemente a saida\n")
		escreva ("1 = explorar a casa ou 2 = sair da casa\n")
          
          decisao = lerDecisao(2)
         

		se (decisao == "1") {
			decisaoExplorar()
		} se (decisao == "2") { 
			decisaoSairCasa()
		}

		
		
	}

	funcao decisaoExplorar(){

		escreva ("voce explora a casa nada de anormal mas acaba encontrando uma faca comum e um pouco de comida\n")
		escreva ("voce encontra um banheiro e entra para tentar achar algum medicamento ou algo que te ajude\n")
		escreva("voce ve uma privada pela sua visao nao parece tao fundo dentro da privada um brilho no fundo parece algo IMPORTANTE\n")
		escreva ("1 = PEGAR O ITEM ou 2 = deixar o ITEM\n")
          
          decisao = lerDecisao(2)
         

		se (decisao == "1") {
		
			escreva("voce cai em ruinas de coco,mas pelo menos voce achou muito ouro\n")
			escreva("sera que valeu a perca da liberdade\n")
			escreva("final 1:NÃO É PORQUE VOCÊ PODE QUE DEVE\n")
		
		} se (decisao == "2") { 

			escreva("voce deixa o banheiro e perde o item especial\n")
			escreva("o seu sentimento de culpa aumenta\n")
			escreva("voce pensa que o item estava em suas maos so faltava voce fechar\n")
			escreva("e quando voce foi sair ainda bateu o de mindinho e voce ouve um tomeee\n")
		}
          
          decisao = lerDecisao(2)
         

		se (decisao == "1") {
			decisaoExplorar()
		} se (decisao == "2") { 
			decisaoSairCasa()
		}
		
	}

	funcao decisaoSairCasa(){
		
	}

	funcao cadeia lerDecisao(inteiro limite){

		cadeia decisaoFunc = ""
		inteiro decisaoInteiro

		leia(decisaoFunc)

		logico ehInteiro = t.cadeia_e_inteiro(decisaoFunc, 10)

		decisaoInteiro = t.cadeia_para_inteiro(decisaoFunc, 10)

		enquanto(nao ehInteiro ou decisaoInteiro > limite) {

			escreva("Decisão inválida. Informe outra decisão: ")
			leia(decisaoFunc)
			ehInteiro = t.cadeia_e_inteiro(decisaoFunc, 10)			

			decisaoInteiro = t.cadeia_para_inteiro(decisaoFunc, 10)
		}

		
		retorne decisaoFunc
			
	}

	funcao aguardar(inteiro tempo){

		enquanto(tempo > 0){
			escreva(". ")
			tempo --
			u.aguarde(1000)
		}

		escreva("\n")
		
	}

	funcao printaGhoul(){
		escreva("@@@@@@@@@@@@@@@@@@@@@@@%(@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@/,*****,*,,/,,,(,@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@&#**/*/*./****,*/*,*(@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@*(,//,,*/,,/*,****/,*@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@(/,,*((#/@&@&@@&&#,,,*&@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@%.,,%*(//,(((,,((#(,,&@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@(,,&@%%#%(&#@%%%&#*,/@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@#/(,(#@@&#*%*%@@&***,(@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@%/*/&@@&***&@&#***(@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@#**&&@&(#%&&,,#@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@(//(/*%@%(,*,*,@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@#(##%#&%%(**/**,*,#@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@&%#@&&&&%(%#%%@@&/(#***//////(/@@@@@@@@@@@@\n")
		escreva("@@@@@@%((((((###(((%&#(*##&**/(((((((#&&%%#&@@@@@@\n")
		escreva("@@@@@&@@@&%###%%%%&&&&(#%%&&&%##%%%%###%&&%###%@@@\n")
		escreva("@@@%&&@@&@&@@@@@@@&%##(((#%&&@@&@@@@@@@&@@&&%#(%@@\n")
		escreva("@@@(%&&%%&@@@@@@&&%%%%%%%%%%&&&@@@@@@@&%&&&&&(@@@@\n")
		escreva("@@@(&//*/*,(#%%&&&&&&%%##%&&&&&&&&&&%%#(*///*&@@@@\n")
		escreva("@@@(%&&(*,((((/(###%#%#((##%######(/(//*,/%&&%*@@@\n")
		escreva("@@&%&&&#/,.,*//(//*(%%%%%%%&&&%#///**,,,./&&&&&/@@\n")
		escreva("@@#&&&&#/*,,/((%#%&&&&%%#(#%&%%%%%#/**,../%&&&&#@@\n")
		escreva("@@(&&&&/(*,/##&((%&&%%##(/#%%%&&&%%#//,,,/(%&&%*@@\n")
		escreva("@@((%%/***%,//(%&&%%%%&%%##%#&&#%%###/,,&*(#***/@@\n")
		escreva("@@/*,((//&@&*(/(##%&&&&&&&&&&&&%#%////,,@,/##//*&@\n")
		escreva("@@((##**/@@@/*(#%#%&@&@@&%%&&&%#%%(//*,%@*,#&&%##@\n")
		escreva("@@&#(/**,@@@%#&&&&#%@@@&&&%&&&&%#((((/*%@*/(#(%((@\n")
		escreva("@@/*///*.@@@*(%&&&&#&@&&&%(%&&&#(/###///@,*#####(@\n")
		escreva("@@**,*/,,@@@(##%%&&&&@&&&%%&&&&%##(###(,@@,,##((/@\n")
		escreva("@@***/,,@@@%##%&&&%&&@&&&%%&&%#(##%&%%%#@@#,,(/(,@\n")
		escreva("@@***,,/@@@@,,,//&&&#%%%%&######%&%/,,..@@@/,,,*,&\n")
		escreva("@@/**,,@@@@&%&%(*.*/#&&&&&&#%%#((**,*(/#@@@@,.,,,@\n")
		escreva("@@%*,.,&@@@#%&&&%#*,,****,******,,/(%%%(/@@@#,,,*@\n")
		escreva("@@%***,,#@&(&&&&&&#**/****/****,*(%%%&&%(%@@*.*,*@\n")
		escreva("@@%**,/,,@(%&&&&&%%*,******/*****%%%%%&&%#@(**/,,@\n")
		escreva("@@&*/,*#,&/&&&&&&&#,,************%%%%%&&&#((#***,@\n")
		escreva("@@@/*,%(/%(&&&&&&&%,,************%%%%%&&&%#/(,/**@\n")
		escreva("@@@&*/*@&##&&&&&&%%*******,*****,%%%%%&&&&%(*/##@@\n")
		escreva("@@@@@,**###&&&&&&%%/***********,,&%%%%&&&%%(@@@@@@\n")
		escreva("@@@@@@@@@@(%&&&&&&%%(,*,,,,,**,,,,%%%%&&&&%#(@@@@@\n")

	}

}
