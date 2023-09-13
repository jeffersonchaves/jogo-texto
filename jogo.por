programa
{
	inclua biblioteca Tipos-->t
	inclua biblioteca Util-->u
	
	
	cadeia decisao
	inteiro vida_ghoul = 100
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
		escreva("voce saiu da casa e se esqueceu que ta no brasil e leva uma bala perdida")
		escreva("final sem reaçao porque morto nao tem reaçao mesmo")
		escreva("final 5")
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
		inteiro dano_posicao
		inteiro sorteado
		logico envenenado = falso

		escreva("voce finalmente ve o mendigo ele realmente era um mendigo mas voce estava errado em pensar que ele era pobre porque ele e muito rico ")
		printaMendigo()

		enquanto(vida_ghoul > 0 e vida_mendigo > 0) {

			escreva("VIDA GHOUL:", vida_ghoul, "\n")
			escreva("VIDA MENDIGO:", vida_mendigo, "\n\n")

			escreva("1 = cabeça 2 = torço 3 = braço_direito 4 = braço_esquerdo 5 = perna_direita 6 = perna_esquerda\n\n")
			leia(dano_posicao)
			
			se(dano_posicao == 1){
				sorteado = u.sorteia(1, 10)

				se(sorteado == 5){
					escreva("alguns falam que e sorte mas e sorte mesmo\n")
					vida_mendigo = 0
				} senao{
					escreva("voce errou burro agora o mendigo tossiu na sua cara\n\n ")
					envenenado = verdadeiro
				}
			}senao se(dano_posicao == 2) {

				sorteado = u.sorteia(1, 10)

				se(sorteado > 5){
					escreva("voce acertou o torço e sangue sai da boca como um isguicho voando em voce\n")
					vida_mendigo = vida_mendigo - 20
				} senao {
					escreva("voce errou burro agora o mendigo levanta os dois braços e da um mortal dando um chute na sua cara\n\n ")
					vida_ghoul = vida_ghoul - 100
				}

				
				
			}senao se(dano_posicao == 3) {
				
			}senao se(dano_posicao == 4) {
				
			}senao se(dano_posicao == 5) {
				
			}senao se(dano_posicao == 6) {
				
			}

			
			
			
			se(envenenado == verdadeiro) {
				escreva("vc está envenenado e sua vida está se esvaindo...\n\n")
				vida_ghoul = vida_ghoul - 5
			}
			
		}//fim da batalha

		se (vida_ghoul <  1  e vida_mendigo < 1){
			escreva("voce mata o mendigo mas a veneno que ele te deu lhe matou tambem fazer oq")
		} senao se (vida_mendigo < 1){
			escreva("voce matou o mendigo ebaaa")
		}senao se(vida_ghoul < 1){
			escreva("voce desmaiou e voce acorda sem pele e sem membros o mendigo olha pra voce rindo da sua cara e solta ratos para comer a sua carne que resta voce sente cada mordida um rato entra no seus olhos e voce grita em desespero voce morre enquato o mendigo ri da sua cara com sua pele em suas maos\n")
			escreva("final feliz amigo dos ratos\n")	
			escreva("final 3\n")	
		}

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
