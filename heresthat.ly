\version "2.18.2"
% 

\header

{ title = "Here's That Rainy Day" 
   arranger = "Ken Ledeen"	
}
heresLyrics = \lyricmode  {
                 May -- be  -- I _ should have saved those left  --  o  --  ver _ dreams. _ _ 
                 Fun -- ny _ but here's that rain -- y day.
                

                 Here's that rain -- y day they told me a -- bout.
                 And I laughed at the thought that it might turn out this way.
                 
                 Where is that worn out wish that I threw a -- side,
                 Af -- ter it brought my lov -- er near?
                 Fun -- ny how love be -- comes a cold rain -- y day,
                 
                 Fun -- ny that rain -- y day is here.
}
baseChords = \chordmode {
              g4:maj7 fis:min6 f:min7 e:7.5-
              es:9 bes:7.5+.9+ 
              es1:maj7 aes:maj7
              a:min7.11 
              a4:min7 d:7 a2:dim7
              g1:maj7 d2:min7.5- g:7.9-
              c1:min7 c2:min7 f4:9+ f:7 bes2:maj7 e:9 ees1:maj7
              a:min7 a2:min7 es4:9 d:7 g2:maj7 e:min7 a:min7 d:7

              g1:maj7 bes:7 ees:maj7 aes:maj7
              a:min7.11 d:7 as2:min7 des:7 d2:min7 g:7
              c1:maj7 a2:min7 d4:13 c:13  b2:min7 e:min7 a:13 bes:dim7
              
              a1:min7.11  d:7 g2:6 e:min7 a:min7 d:7
}


melody =     
     
     \relative c'
       {       %     VOICE 1                      VOICE 2
              << { d4  d2 d4 }             \\     { b8 bes  a4 as <ges as>}      >> 
              << { d'4 f bes d }             \\    { as,2 <d ges>2 }           >>
               << { d'2 c4. b8 }            \\    { <f g>2~ g2}                    >>     
              << {  c1  }                       \\   { g2. f8 es }                           >>             
              <<  {  d4 d2 d4 }            \\     { c1 }                              >>
              <<  { d4  fis a c}              \\     { <g, a >4  <c d > <es fis > <fis a > }      >> 
              <<  { e 1 }                       \\     { < g b>1 }                                               >> 
              <<  {   }                          \\      { <f f'>8  e' <f, d'> c' b as g f }    >>
              <<  {   es'2.es4 }             \\     { es,2. es4 }      >>           
              <<  {  es'  g, as a  }         \\     { es }      >>
              <<  { d'2  f,4 fis }           \\     { f2 gis,2 }      >> 
              <<  {  g'2. fis8 g  }         \\     { bes,2 d2 }      >>
              <<  { c'4 c8 c c4 c8 c}    \\     {<c, e>2  <des f>2 }      >>
              <<  {  c'4 e, f fis  }         \\     { <dis fis>4 d des c }      >>
              <<  { b'1  }                    \\     { <b, e>4 c des d }      >>
              <<  {   }                        \\     {   <e e'>8 c' <d, b'> a' <des, as'> ges  <c, f> es}      >>
              <<  { d4 d2 d4  }          \\     { b2 a }      >>
              <<  { d4 f bes d   }        \\     { as,2 <des ges >}      >>      
              <<  { d'2 c4. b8  }         \\     { <f g>2~ g2 }      >>    
              <<  { c1  }                    \\     {  }      >>
              <<  {  d,4 d2d4  }        \\     {  }      >>
              <<  {   d4 fis a c }        \\     {  }      >>
              <<  {   b1 }                  \\     {  }      >>   
              <<  {   }                    \\     { r8  f g as bes b des d}      >>
              <<  {  e4 e2 e4 }          \\     {  }      >>
               <<  {e a, b c   }           \\     {  }      >>
               <<  { d2. fis,8 g   }      \\     {  }      >>  
               <<  {  a1 }      \\     {  }      >>
               <<  { d,4 d2 d4  }      \\     {  }      >>
               <<  {  d fis a b }      \\     {  }      >>
               <<  {  g1  }      \\     {  }      >>
               <<  { r1  }      \\     {  }      >> 
}		% end of PianoRH

pianoLH = 
{
  
  \relative c
  {
        %     VOICE 1                      VOICE 2
        << {  fis8 f e4 es   d }    \\    {  g,4 fis f e       }     >>
        
     es  < bes' as'>
    es,4 < bes'' f'>4 <a e'>2
    <as es'>2  <e, d'>
    <a e' g>2 <bes f' as> 
    <c e>4 <fis a> <a c><c es> 
    <<    {  d1 }       \\      {  b2~ b8 g fis e}   >>
    d4 <a' c> g8 f es d 
    c8 g' c c, bes g' c bes, 
    a f' e es d des c b 
    
    <bes a'>2 <e, d'>
    <es d'>2 <b' a'>4 <bes as'>  
    <a g'>2 <bes as'>  <b a'>4 <e b'> <es bes'> <d a'>
    
    <g, fis'> <a g'> <bes as'> <b a'>
    <c b'>4 <b a'> <bes as'> <a g'>
    
    fis'4 g,  <fis e'>2
    es'4 f, <bes as'>2
    es,4 < bes'' f'>4 <a e'>2
    <as es'>2  <e, d'>
    <a e' g>2 <bes f' as> 
    <c e>4 <fis a> <a c><c es> 
    <<    {  d1 }           \\     {  b2~ b8 g fis e}    >>
    d4 <fis c'> g8 fis e d 
  }

}    % end of pianoLH


%============SCORE================
\score {
  \new StaffGroup 
  <<

         \new PianoStaff 
         <<
              \new ChordNames \baseChords
       
           \new Staff 
           {
                  \tempo 4=100
                  \key g \major		
                 \melody
       
           }  % end of treble staff

           \new Staff 
           {
                  \key g \major
                  \clef "bass"
                  \pianoLH
           } % end of bass staff
      >>
       \addlyrics \heresLyrics

 >>   % end of Staff Group for Keyboard & Bass

  \layout {}
 %	\midi {}
}    % end of score
