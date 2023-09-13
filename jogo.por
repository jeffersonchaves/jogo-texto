programa
{
	inclua biblioteca Tipos-->t
	inclua biblioteca Util-->u
	
	
	cadeia decisao
	inteiro vida_ghol = 100
	inteiro vida_mendigo = 100

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
		u.aguarde(300)
		escreva ("1 = explorar a casa ou 2 = sair da casa\n")
		u.aguarde(300)
          
          decisao = lerDecisao(2)
         

		se (decisao == "1") {
			decisaoExplorar()
		} se (decisao == "2") { 
			decisaoSairCasa()
		}

		
		
	}

	funcao decisaoExplorar(){
  		aguardar(3)
		escreva ("voce explora a casa nada de anormal mas acaba encontrando uma faca comum e um pouco de comida\n")
		u.aguarde(300)
		escreva ("voce conseguiu 2 latas de de porco, uma faca comum e 1 pano talvez  seja util\n")
		u.aguarde(300)
		escreva ("voce encontra um banheiro e entra para tentar achar algum medicamento ou algo que te ajude\n")
		u.aguarde(300)
		escreva("voce ve uma privada pela sua visao nao parece tao fundo dentro da privada um brilho no fundo parece algo IMPORTANTE\n")
		u.aguarde(300)
		escreva ("1 = PEGAR O ITEM ou 2 = deixar o ITEM\n")
		u.aguarde(300)
          
          decisao = lerDecisao(2)
         

		se (decisao == "1") {
		
			escreva("voce cai em ruinas de coco,mas pelo menos voce achou muito ouro\n")
			u.aguarde(300)
			escreva("sera que valeu a perca da liberdade\n")
			u.aguarde(300)
			escreva("final 1:NÃO É PORQUE VOCÊ PODE QUE DEVE\n")
			u.aguarde(300)
		
		} se (decisao == "2") { 

			escreva("voce deixa o banheiro e perde o item especial\n")
			u.aguarde(300)
			escreva("o seu sentimento de culpa aumenta\n")
			u.aguarde(300)
			escreva("voce pensa que o item estava em suas maos so faltava voce fechar\n")
			u.aguarde(300)
			escreva("e quando voce foi sair ainda bateu o de mindinho e voce ouve um tomeee\n")
			u.aguarde(300)

			//segue a estória
			decisaoDeixarITEM()
		}


	}

	funcao decisaoDeixarITEM(){

		escreva ("voce ouve alguem por perto e traz uma aura pesada que faz voce ate ficar tonto\n")
		u.aguarde(300)
		escreva ("voce ve ele de longe e percebe a sensaçao era porque ele era um mendigo pobre sim ele e um mendigo e ainda e pobre\n")
		u.aguarde(300)
		escreva ("voce corre do mendigo ou luta contra o mendigo\n ")
		u.aguarde(300)
		escreva ("1 = lutar pela sua pele ou 2 = tentar sair correndo e pular a janela\n")
		u.aguarde(300)
          
          decisao = lerDecisao(2)
         
		se (decisao == "1") {
		
			batalha()
		
		} se (decisao == "2") { 

			escreva("voce sai correndo e tenta pular um vidro mas era um espelho\n")
			u.aguarde(300)
			escreva("voce cai no chao com seus olhos quase fechando ve o mendigo chegando perto\n")
			u.aguarde(300)
			escreva("voce desmaia enquato e carregado pelo mendigo\n")
			u.aguarde(300)
			escreva("voce acorda preso em um quarto\n")
			u.aguarde(300)
			escreva("final 2")
		}

	}

	funcao decisaoSairCasa(){
		escreva("essa operaçao nao foi programada")
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

	funcao batalha(){

		escreva("voce finalmente ve o mendigo ele realmente era um mendigo mas voce estava errado em pensar que ele era pobre porque ele e muito rico ")
		printaMendigo()

		

		
	}

	funcao printaMendigo(){
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%%@  %&@&      ****%....   %@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,    .#((..* /.#(.(///.*#(/.,,,*,,..  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@,.,....,*.,.*(###/(, */(#((/,(// (*(///*(/* */*/,,.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@%      **..,,.*(,//#(((,.  (####/.#,((*(.,., ..(*.,*,....***/.(@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@%   .*/,,***.,///###(#/,. ,,(###**.(.*//#/*///(/(/*,...*,,,.,*,/,*.@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@ ,,,/.,.,,*,(##%%%%#/, ..*(#//(/./(*(,*/(/(//(/*(.*....,,,/((/,,,. &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@*  */. .***.(,./(##%##(.,.(#(/.*,/(*,(./(##/#*,(*,(, ,., ,,./(#(.,/*.,./...#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@&/,. .,.,/ **/.  // ,/(//((*#  .*##//*#(,.,,//*..,//(/.*  ..,*,/(#//,*#,**,.*.,,((* .%@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@(&/,**(* (.*.  ..,.*./#(/(((/ . *######(//#.. / .,.,*.. ,**.,,(#(#(*(/*,*..( .*.,/,.(@@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@&/.,*//*,,(,.. ,,*/.#//#(##(*(.,.,*/.*#/#(.*.***,,, .,*  .*#*#(/#(/.*(,*.,.,,,/*.....*@@@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@@@,.,*. .(,*,*.,,/.(,,*/.(##/,/,,,##%(#//(,/,.... ./(#((*/*.#/((,*#*....*,,,./**.,/,/* .%@@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@&(...**.*/**,*,.*(*//,.((*(#*/#%%%%###((#(,.*,.,.. /*#(#(((((/(/**/*,..*,*,*,**.*,,***/,.,&@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@@@@@@@,.*,*/*,*,***,(*//,./*/.*,*(*(%%(/#%%%%%%%#%#/**  .*/#(/(**(/(/(/,....******,,//,,,,**/....@@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@@@/*/ ./(/*/**,.** ,,,/..(****,.,./#%%#(#%%#*.  ..,(/. *,(,(*,,*,///*./,,..****/(/(,.*./,/*,.,.,@@@@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@#,/,/****/*/*/*,*.,,.. ..,.*,/**.*(/#(   .*#%/,,/(##%#,.*,((/,*,**,,,*/**..*/*/**(**//////.,,...,&@@@@@@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@@#,,/*//. *//*(/,/*(*.. ...*,.,*.*..,/*..,*(%#%%,,*//*,**..(**//(/(***//**,/*.*,/(/*/*(/(*/*/*./.*,......%@@@@@@@@@@@@\n")
		escreva("@@@@@@@@@&(./.*,//*/,*///*.*((/(,*.../,,*.,,  *####(#%#,,,.**/*./,.((*#///(**,,*////..,***//*/*//(*/*,/,/./*.,,,,**,,&&@@@@@@@@\n")
		escreva("@@@@@@@@@@&,*,/////./,/(,(*/.*#/,*..(((,*(,,..  .*,/##/..,*../.*#.   *///((//(##(###, .,,(*,/(/(**/***/.,*.///,*/ (** %@@@@@@@\n")
		escreva("@@@@@@@@@@@,//,*/ (,*///*/,*,/*//, */(#/(*(/.*...*(#/..*/,**.**#(.*,*,,**/((*###%#(.(...*/*//.,/((/,,.,*,,,*/*// (,/.*(&@@@@@@@\n")
		escreva("@@@@@@@@@/ /..*.///(,*(*,*,((*(#/,.,/.(#(#(*(,(/*..*(###/**/(%%#.**,*/#*,(//##/*/,,(**.,*,(//(,////*,**..,,*,*(*/.*/,**%@@@@@@@\n")
		escreva("@@@@@@@@@%.**.*/(/.,.*,.///,.(#(#((..*#*/#(((/#((/((**,..*/((/*.*,***/(((#(((#(/**/.,**. ..,/./(*/*/*.*(//**,,*//,,*./,&@@@@@@\n")
		escreva("@@@@@@@@@&%.,//*,....,**,*/./((#/,,,,.//(,*//##//(#(#(*((**/*/* ,((/((#((.....,...,.*.,*...**/./,((,*,/((/,,.*,,.,. *,*@@@&%#&@\n")
		escreva("@@@@@@%@@&*./../*./*,*///,*.//*#/.*,,*. *,*../,*..*(*/((*.**(*. **,/,.*,//*,..*.....*. ,, *, ,..///**/,/(*/*,*...,.,,./***...,(&@@@\n")
		escreva("@@@@@@@@@@../.,.*,,#//(,//*././*/,,/,/..*..,..  ....,*.***./*.*,.,,** .  /. *  ,,,(,..* **,  /*...*/*//*#/**.,*/,,/.,.*/,/#@@@@@@@\n")
		escreva("@@@@@@@@*  &,.,..*/(#*(#//**..**,,,*.,.,**,*, /../,/*./...,/,*,/#**,./###(**.,*..,... **,/ .   ..,.*/*/,(/*,/#*((,./,.,.&@@@@@@@@\n")
		escreva("@@@@@@@@@ (./,//*/**//(((.*.*..,**...... ,,,/ ...(/,**,*(#..,*####///(####((((,/*/(/.* .,/,, .*  ..,/***/(/,/(/*/,,.,....%@@@@@@@@\n")
		escreva("@@@@@@@@@. ..///(/../(((*(.,(,.,.,.    #.* .** /**,/(//((####(///**,*//((/((//***//,, *  . ,    . .*.,,/(//,((*/*.*.*.,../@&@@@@@\n")
		escreva("@@@@@@@@%,,**//(,////*,.(*,/./,,.,. /.(%*....,./ ,,** ,*****/(((/*,**(#######(.,,*,,.    ,. ,. . . *,.*//*/,(*(/*.**,**..***.... #@\n")
		escreva("@@@@@@@@&%.,(/.*,/..*//*,,(##%(,.*****//*#/*/(/#(((#/*,,*.,,(*(/(((###((#####%%###(**/***###(((*#%%%%%%%%(((((/*,*.(((//(/*,,**\n")
		escreva("@@@@@@@@@*.*(/#/**/(*,/###(#((*/#####(#(#(#(#(((#(####(#((((#((###(#(#(#(###(#(#(#(#(#(#(#(#(###(#(###(#(#(###((#(###(#(#(###(##\n")
		escreva("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@\n")

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
