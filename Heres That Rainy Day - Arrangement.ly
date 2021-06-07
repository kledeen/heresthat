\version "2.18.2"
% 

\header
{ title = "Here's That Rainy Day" 
   arranger = "Ken Ledeen"	
}
heresLyrics = \lyricmode  {
                 May -- be I should have saved those left  --  o  --  ver dreams.
                 Fun -- ny but here's that rain -- y day.
                 Here's that rain -- y day they told me a -- bout.
                 And I laughed at the thought that it might turn out this way.
                 
                 Where is that worn out wish that I threw a -- side,
                 Af -- ter it brought my lov -- er near?
                 Fun -- ny how love be -- comes a cold rain -- y day,
                 
                 Fun -- ny that rain -- y day is here.
}

mdecks = \chordmode {
     g1:maj7 f2:min7 bes:7 es1:maj7
     as2:maj7 e:7.9- a:min7 e:7.9- a:min7 as:7
     g1:maj7 d2:min7.5- des:7
     c1:min7 c2:min7 f:7 bes:maj7 d:dim7
     es:maj7 e:7.9-
     a1:min7 aes:7 
     g1:maj7 a2:min7 as:7
      
}
baseChords = \chordmode {
      g2:maj7 fis:min6 f:m6 bes:7.5+.9+ 
              es1:maj7 aes:maj7
              a:min7.11 
              a4:min7 d:7 a2:dim7
              g1:maj7 d2:min7.5- g:7.9-
              c1:min7 c2:min7 f4:9+ f:7 bes2:maj7 e:9 ees1:maj7
              a:min7 a2:min7 es4:9 d:7 g2:maj7 e:min7 a:min7 d:7

              g1:maj7 bes:7 ees:maj7 aes:maj7
              a:min7.11 d:7 gis2:min7 cis:7 d2:min7 g:7
              c1:maj7 a2:min7 d4:13 c:13  b2:min7 e:min7 a:13 bes:dim7
              
              a1:min7.11  d:7 g2:6 e:min7 a:min7 d:7
}
%{
<<
                 {  d4  d2 d4  d f bes d
                    d2 c4. b8 c1
                    
                 }
                 
                 \\
                 { b,2 a as  
                     <des ges>
                     <g bes>2~ g2
                 }
            >>
%}


melody =     
     
     \relative c'
       {
              <<
                 {  d4  d2 d4  d f bes d
                    d2 c4. b8 
                    c2 f,4 es 
                 }
                 \\
                 { b2 a as  
                     <des ges>4 <e gis>
                     <g bes d>2~ g2
                     g2 gis,
                 }
            >>
       
            <c d>4 d d2 <g, a d>4  <c d fis> <es fis a> <fis a c> 
            <e g b>1 
            <f f'>8  e' d c b as g f
           < es es'>2 < es es'> < es es'>4 g as a d2 f,4 fis g2 fis4 g c c8 c c4 c8 c c4 e, f fis b1 r
            d,4 d2d4 d f bes d d2 c4. b8 c1
            d,4 d2d4 d fis a c b1 r
            e4 e2 e4 e a, b c d2 fis,4 g a1 d,4 d2 d4 d fis a b g1 r
       
  
   
 % \new Lyrics \lyricsto "hm" { \heresLyrics  }
 %  \addlyrics \heresLyrics
    %    \addlyrics 
%             {    
%                  May -- be I should have saved those left  --  o  --  ver dreams.
%                  Fun -- ny but here's that rain -- y day.
%                  Here's that rain -- y day they told me a -- bout.
%                  And I laughed at the thought that it might turn out this way.
%                  
%                  Where is that worn out wish that I threw a -- side,
%                  Af -- ter it broiught my lov -- er near?
%                  Fun -- ny how love be -- comes a cold rain -- y day,
%                  
%                  Fun -- ny that rain -- 	`y day is here.
%             }
}		% end of PianoRH

pianoLH = 
{
  
  \relative c
  {
    <g fis'>2 <fis e'> f  < bes as'>
    es,4 < bes'' f'>4 <a d>4. <g d'>8
    <as es'>2  <e, d'>
    <a e' g>2 <bes f' as> 
    <c e>4 <fis a> <a c><c es> 
    <<
         {  d1 }
         \\
         {  b2~ b8 g fis e}
    >>
    d,4 <as'' c> g,8 f' es d 
    c8 g' c c, bes g' c bes, 
    a f' e es d des c b 
    
    bes2 e,
    es1 a a2es'4 d 
    g,2 
    



  }

}    % end of pianoLH

bass = 
{
  
  \relative 
  {  
    a b c d
  }

}
%++++++++++++++++++++++++++++++++
%
% Scheme Function to generate a complete score 
%
%++++++++++++++++++++++++++++++++

scoreSection =
#(define-scheme-function (myTitle  myRight myLeft) (string? ly:music? ly:music?)
    #{
      \score {
          \header { piece = \markup{\fontsize #4 \bold #myTitle }}
           \new PianoStaff 
         <<
           \include "IndianaChords.ly"  
           \new Staff { \key aes \major #myRight }
           \new Staff  { \key aes \major  \clef "bass"  #myLeft }  
         >>
     }  
    #})

%============SCORE================
\score {
  \new StaffGroup <<

    \new PianoStaff <<
         \new ChordNames \baseChords
        %  {
%               g2:maj7 fis:min6 f:m6 bes:7.5+.9+ 
%               es1:maj7 aes:maj7
%               a:min7.11 d:7 g:maj7 d2:min7 g:7.9-
%               c1:min7 c2:min7 f4:9+ f:7 bes2:maj7 e:9 ees1:maj7
%               a:min7 a2:min7 es4:9 d:7 g2:maj7 e:min7 a:min7 d:7
% 
%               g1:maj7 bes:7 ees:maj7 aes:maj7
%               a:min7.11 d:7 gis2:min7 cis:7 d2:min7 g:7
%               c1:maj7 a2:min7 d4:13 c:13  b2:min7 e:min7 a:13 bes:dim7
%               
%               a1:min7.11  d:7 g2:6 e:min7 a:min7 d:7
% 
%          }
      \new Staff  \with {instrumentName = #"Piano " }
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
    
    \chords {       }
    
%NOTE:remove block comment below to include staff for separate Bass line
%{
    \new Staff \with {instrumentName = #"Bass " }

    {

      \key f \major
      \clef "bass"
      \bass
   
    } % end of Standing Bass
    %}
  >>   % end of Staff Group for Keyboard & Baass
  \layout {}
 %	\midi {}
}    % end of score
