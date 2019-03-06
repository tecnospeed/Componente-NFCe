DEFINE CLASS ClasseGeral AS Custom

	HIDDEN certificado	AS String
	HIDDEN arqINI AS String
	
	FUNCTION getCertificado AS String
		RETURN THIS.certificado
	ENDFUNC
	
	FUNCTION getArqINI AS String
		RETURN THIS.arqINI
	ENDFUNC
	
	PROCEDURE setCertificado AS VOID
		LPARAMETERS certificado AS String
		THIS.certificado = certificado
	ENDFUNC
	
	PROCEDURE setArqINI AS VOID
		LPARAMETERS arqINI AS String
		THIS.arqINI = arqINI
	ENDFUNC	

	FUNCTION ATXLEFT() AS STRING
		PARAMETERS qExpr, qSearch, qVar3, qVar4, qVar5
		PRIVATE ALL LIKE z*

		ztype = TYPE('qExpr')
		IF ztype $ 'CDMN'
		    DO CASE 
		    CASE ztype = 'N'            
		        qExpr = STR(qExpr)
		    CASE ztype = 'D'            
		        qExpr = DTOC(qExpr) 
		    ENDCASE
		    
		    qExpr = ALLTRIM(qExpr)
		    zstr = ""
		    IF TYPE('qSearch') = 'C'
		        zcount = IIF(TYPE('qVar3') = 'N', IIF(qVar3 < 0, 0, INT(qVar3)), 1)
		        IF EMPTY(zcount)
		            zstr = qExpr
		        ELSE
		            z = AT(qSearch, qExpr, zcount)
		            DO CASE
		            CASE EMPTY(z)
		                    
		            CASE z + LEN(qSearch) - 1 <> LEN(qExpr)
		                    
		                zstr = SUBSTR(qExpr, z + LEN(qSearch))
		            ENDCASE
		        ENDIF
		        IF NOT EMPTY(zstr)
		                
		            DO CASE
		            CASE TYPE('qVar3') = 'C'
		                zstr = ATXLEFT(zstr, qVar3, qVar4)
		            CASE TYPE('qVar4') = 'C'
		                zstr = ATXLEFT(zstr, qVar4, qVar5)
		            CASE TYPE('qVar4') = 'N'
		                zstr = ATXLEFT(zstr, qSearch, qVar4)
		            ENDCASE
		        ENDIF
		    ENDIF
		ELSE                            
		    mmm = Invalid_Input         
		ENDIF
		RETURN zstr 
	ENDFUNC


	FUNCTION ATXRIGHT() AS STRING
		PARAMETERS qExpr, qSearch, qCount
		PRIVATE ALL LIKE z*

		ztype = TYPE('qExpr')
		IF ztype $ 'CDMN'
		    DO CASE
		    CASE ztype = 'N'		            
		        qExpr = STR(qExpr)
		    CASE ztype = 'D'
		        qExpr = DTOC(qExpr)
		    ENDCASE
		    
		    qExpr = ALLTRIM(qExpr)
		    zstr = qExpr    
		    IF TYPE('qSearch') = 'C'
		        zcount = IIF(TYPE('qCount') = 'N', IIF(qCount < 0, 0, INT(qCount)), 1)
		        IF EMPTY(zcount)
		            zstr = ""
		        ELSE
		            z = AT(qSearch, qExpr, zcount)
		            DO CASE
		            CASE EMPTY(z)		                   
		            CASE EMPTY(z - 1)		                    
		                zstr = ""
		            OTHERWISE		                    
		                zstr = LEFT(qExpr, z - 1)
		            ENDCASE
		        ENDIF
		    ENDIF
		ELSE                            
		    mmm = 'Invalid_Input'       
		ENDIF
		RETURN zstr
	ENDFUNC
  
	FUNCTION leArquivoIni(secao AS String, chave AS String, arquivo AS String)
		Declare Integer GetPrivateProfileString in Kernel32 ;
						string, string, string, string @, integer, string  

		lcBuffer = space(255)
		GetPrivateProfileString(secao,chave,"",@lcBuffer, Len(lcBuffer),arquivo)
		RETURN ALLTRIM(lcBuffer)
	ENDFUNC

	PROCEDURE gravaArquivoIni(secao as String, chave as String, valor as String, arquivo as String)   
		DECLARE integer WritePrivateProfileString in Kernel32 ;
						string, string, string, string
		
		WritePrivateprofileString(secao,chave,valor,arquivo)
	ENDPROC
	
	PROCEDURE preencheComboBoxNomeCertificado AS VOID
		LPARAMETERS combo AS ComboBox
		separador = "|"
		DO WHILE NOT EMPTY(this.certificado)
			this.certificado = this.ATXLEFT(this.certificado,separador)
			items = this.ATXRIGHT(this.certificado,separador)
			combo.AddItem(items)
		ENDDO
	ENDPROC

	PROCEDURE preencheComboBoxTipoCertificado AS VOID
		LPARAMETERS combo AS ComboBox
			combo.AddItem("ActiveDiretory")
			combo.AddItem("LocalMachine")
			combo.AddItem("Memory")
			combo.AddItem("Smart")
			combo.AddItem("File")						
	ENDPROC		
	
	FUNCTION shell_exec
   		LPARAMETERS lclink, lcaction, lcparms, lcdir, nshowwindow
   
   		DECLARE INTEGER FindWindow IN WIN32API AS WGFindWindow STRING, STRING   
   		DECLARE INTEGER ShellExecute IN SHELL32.DLL AS WGShellExecute ;
      		INTEGER, STRING, STRING, STRING, STRING, INTEGER
   
	   m.lcaction = IIF(EMPTY(lcaction), "Open", lcaction)
	   m.lcparms = IIF(EMPTY(lcparms), "", lcparms)
	   m.lcdir = IIF(EMPTY(lcdir), "", lcdir)
	   m.nshowwindow = IIF(VARTYPE(m.nshowwindow) == "N", m.nshowwindow, 1)

	   RETURN wgshellexecute(wgfindwindow(0, _SCREEN.CAPTION),;
	      @lcaction, @lclink,;
	      @lcparms, @lcdir,;
	      m.nshowwindow)
	ENDFUNC
	
	FUNCTION capturaString
		LPARAMETERS valorInicial AS STRING, valorFinal AS STRING, xml AS STRING
		
		POSINICIAL = AT(valorInicial,XML)+LEN(valorInicial)
		POSFINAL = AT(valorFinal,XML)
		RETURN SUBSTR(xml,POSINICIAL,POSFINAL-POSINICIAL)
	ENDFUNC	
	
	 
ENDDEFINE