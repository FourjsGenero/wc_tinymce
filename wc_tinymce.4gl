MAIN
DEFINE wc STRING
DEFINE rich_text STRING

    CLOSE WINDOW SCREEN
    OPEN WINDOW w WITH FORM "wc_tinymce"

    LET rich_text = "<p>This is <strong>Bold</strong> and <em>Italic</em></p>"
    
    INPUT BY NAME wc ATTRIBUTES(WITHOUT DEFAULTS=TRUE, UNBUFFERED)
        ON ACTION set ATTRIBUTES(TEXT="Set Content")
            CALL ui.Interface.frontCall("webcomponent","call",["formonly.wc","set_content",rich_text],[])

        ON ACTION show ATTRIBUTES(TEXT="Show Content")
            CALL ui.Interface.frontCall("webcomponent","call",["formonly.wc","show_content"],[])

        ON ACTION get ATTRIBUTES(TEXT="Get Content")
            CALL ui.Interface.frontCall("webcomponent","call",["formonly.wc","get_content"],[rich_text])
            DISPLAY rich_text

        AFTER INPUT
            IF int_flag THEN 
                EXIT INPUT
            END IF
    END INPUT
END MAIN