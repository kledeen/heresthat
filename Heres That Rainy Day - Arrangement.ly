\version "2.18.2"
% 

\header
{ title = "Here's That Rainy Day"
   arranger = "Ken Ledeen"
  
  	
}
melody = 
{
     \relative c'
       {
            d4 d2 d4 d f bes d d2 c4. b8 c1
            d,4 d2 d4 d fis a c b1 r
            es2 es es4 g, as a d2 f,4 fis g2 fis4 g c c8 c c4 c8 c c4 e, f fis b1 r
            d,4 d2d4 d f bes d d2 c4. b8 c1
            d,4 d2d4 d fis a c b1 r
            e4 e2 e4 e a, b c d2 fis,4 g a1 d,4 d2 d4 d fis a b g1 r
       
  
  } 
       \addlyrics
            {
                 May -- be I should have saved those left  --  o  --  ver dreams.
                 Fun -- ny but here's that rain -- y day.
                 Here's that rain -- y day they told me a -- bout.
                 And I laughed at the thought that it might turn out this way.
                 
                 Where is that worn out wish that I threw a -- side,
                 Af -- ter it broiught my lov -- er near?
                 Fun -- ny how love be -- comes a cold rain -- y day,
                 
                 Fun -- ny that rain -- y day is here.
            }
}		% end of PianoRH

pianoLH = 
{
  
  \relative c
  {
    g2 fis f bes
    es,1
    as
    a d g d2 g
    c,1 c2 f bes, e
    es1 a, a2es'4 d 
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
         \chords
         {
              g2:maj7 fis:min6 f:m6 bes:7.5+.9+ 
              es1:maj7 aes:maj7
              a:min7.11 d:7 g:maj7 d2:min7 g:7.9-
              c1:min7 c2:min7 f4:9+ f:7 bes2:maj7 e:9 ees1:maj7
              a:min7 a2:min7 es4:9 d:7 g2:maj7 e:min7 a:min7 d:7

              g1:maj7 bes:7 ees:maj7 aes:maj7
              a:min7.11 d:7 gis2:min7 cis:7 d2:min7 g:7
              c1:maj7 a2:min7 d4:13 c:13  b2:min7 e:min7 a:13 bes:dim7
              
              a1:min7.11  d:7 g2:6 e:min7 a:min7 d:7

         }
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
