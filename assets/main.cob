#import
theme as theme
builtin.colors.tailwind as tw

#defs

+list_items = \
    "text1"
        TextLine{text:"lmao1"}
    "text2"
        TextLine{text:"lmao2"}
    "text3"
        TextLine{text:"lmao3"}
    "text4"
        TextLine{text:"lmao4"}
    "text5"
        TextLine{text:"lmao5"}
    "text5"
        TextLine{text:"lmao6"}
    "text7"
        TextLine{text:"lmao7"}
    "text8"
        TextLine{text:"lmao8"}
    "text9"
        TextLine{text:"lmao9"}
    "text10"
        TextLine{text:"lmao10"}
    "text11"
        TextLine{text:"lmao11"}
    "text12"
        TextLine{text:"lmao12"}
\

+scroll = \ 
    ScrollBase
    FlexNode{
        // width:100%
        flex_grow:1
        flex_direction:Row
    }
    "view"
        ScrollView
        FlexNode{
            min_height:200px
            height:100%
            flex_grow:1
            clipping:ScrollYClipX
        }
        BackgroundColor($tw::AMBER_400)
        "shim"
            ScrollShim
            AbsoluteNode{
                flex_direction:Column
                justify_main:Center
                justify_cross:Center
            }
    "vertical"
        ScrollBar{axis:Y}
        FlexNode{height:100% width:14px}
        BackgroundColor(#888888)
        "handle"
            ScrollHandle
            AbsoluteNode{width:100%}
            BackgroundColor(#BBBBBB)
\

#scenes
"menu"
    FlexNode{flex_direction:Column}
    Splat<Padding>(8px)
    Splat<Margin>(auto)
    BrRadius(8px)
    BackgroundColor($theme::primary)
    "label"
        Splat<Margin>(auto)
        TextLineColor($theme::tertiary)
        TextLine{text:"Menu has loaded!"}
    "buttons"
        BackgroundColor($tw::AMBER_500)
        FlexNode{flex_direction:Column row_gap:8px}
        Splat<Margin>(auto)
        "start"
            +theme::button{
                Splat<Margin>(auto)
                "text"
                    TextLine{text:"Start"}
            }
        "settings"
            +theme::button{
                Splat<Margin>(auto)
                "text"
                    TextLine{text:"Settings"}
            }
        "exit"
            +theme::button{
                Splat<Margin>(auto)
                "text"
                    TextLine{text:"Exit"}
            }
    "settings"
        FlexNode{min_width:300px min_height:150px}
        Splat<Margin>(auto)
        Splat<Border>(2px)
        BorderColor(#000000)
        "left"
            +scroll{
                "view"
                    "shim"
                        +list_items{}
            }
        "right"
            +scroll{
                "view"
                    "shim"
                        +list_items{}
            } 
    //Actual tab menu
    "tab_menu"
        GridNode{grid_auto_flow:Column column_gap:10px}
        "info"
            FlexNode{justify_main:Center}
            "text"
                TextLine{ text: "Info" }
                TextLineColor(Hsla{ hue:60 saturation:0.85 lightness:0.90 alpha:1.0 })
            
        "exit"
            FlexNode{justify_main:Center}
            "text"
                TextLine{ text: "Exit"}
                TextLineColor(Hsla{ hue:60 saturation:0.85 lightness:0.90 alpha:1.0 })

    //This is what changes based on menu selection
    "tab_content"
        GridNode{ height:25vh }
        BackgroundColor(Hsla{ hue:221 saturation:0.5 lightness:0.20 alpha:0.5 })

    "footer_content"
        FlexNode{justify_main:Center}
        "text"
            TextLine{ text: "I don't change" }
            TextLineColor(Hsla{hue:0 saturation:0.00 lightness:0.85 alpha:1.0})

"info_tab"
    FlexNode{justify_main:Center}
    TextLine{text:"You are in the info tab"}

"exit_tab"
    //Not implemented
    FlexNode{justify_main:Center}
    TextLine{text:"Click me to quit"}
