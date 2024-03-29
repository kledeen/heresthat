\version "2.18.2"
% 

\header { title = "Here's That Rainy Day" 
   arranger = "Ken Ledeen"	
}
heresLyrics = \lyricmode  {
                 May -- be   I  should have saved those left   o  --  ver  dreams. 
                 Fun -- ny  but here's that rain -- y day.
                
                 Here's that rain -- y day they told me a -- bout.
                 And I laughed at the thought that it might turn out this way.
                 
                 Where is that worn out wish that I threw a -- side,
                 Af -- ter it brought my lov -- er near?
                 Fun -- ny how love be -- comes a cold rain -- y day,
                 
                 Fun -- ny that rain -- y day is here.
}

leadSheetChords = \chordmode {
              g1:maj7 bes:7
              es:maj7 as:maj7
              a:min7 d:7
              g:maj7 d2:min7 g:7.9+
              c1:min7 f:7
              bes:maj7 ees:maj7
              a:min7 d:7 
              g2:maj7 e:min7 a:min7 d:7
              g1:maj7 bes:7
              es:maj7 as:maj7
              a:min7 d:7
              g:maj7 d2:min7 g:7
              c1:maj7 a2:min7 d:13
              b:min7 e:min7
              a2:7  bes:dim
              a1:min7 d:7
              g2:6 e:min7 a:min7 d:7
          }

baseChords = \chordmode {
             g1:maj7
             f2:min7 bes:7
             %g4:maj7 fis:min6 f:min7 e:7.5-
             %es2:9 bes:7.5+.9+ 
              es2:maj7 a:min7 aes1:maj7
              a2:min7.11  bes:9
              a4:min7 d:7 a2:dim7
              g1:maj7 d2:min7 g:7.9-
              c:min7  c:min7/bes
              c2:min7  b:7 
              bes2:maj7 e:9 ees1:maj7
              a2:min7 bes:min7.13-
              b4:7.9- e:min7 es:9 d:7
              g:maj 7 a:min7 bes:min7 g:7
              a2:min7 aes:7
              g2:maj7 as4:min7 a:min7
              
              bes4:7  bes:9 c:min7/bes e/bes
              a2:min7 d:7
              g:min7.5- c:7.9-
              b2:min7 c:9
              
              d4:6 c:11 d/bes aes:7

              g2:maj7 e:min7
              
              d2:min7 g:7
              c2:maj7 a2:min7 
              f4:maj9 es:9 d:13 des:maj7
              d2:6.9 c:7  
              a:9 bes:dim7
              
              a2:min7.11  e:7
              d:7 g2:6 
              f4:min7  e:min7 es:7 d:7
              g1:maj7
}
lead =  \relative c'    {
               d4 d2 d4 d f bes d
               d2 c4. b8 c1
               d,4 d2 d4 d fis a c b1~ b
               es2. es4 es g, as a d2 f,4 fis 
               g2.fis8 g
               c4 c8 c c4 c8 c 
               c4 e, f fis b1~ b
               \bar "||"
               d,4 d2 d4 d f bes d d2 c4 b c1 
               d,4 d2 d4 d fis a c b1~ b
               e4 e2 e4 e a, b c d2 fis,4 g a1 d,4 d2 d4 d fis a b g1
               r1
          }

\include "HeresThatRainyDayMelody.ly"
comping = \relative c' {
  < fis, a b d>1    % Gmaj7
  <as c d g>       %Bb7
  <g bes d f>     % Eb maj7
  <g bes c es>    % Ab
  
  <g b c e>         % A min7
  < fis  b c e>     % D7
  <fis a b d>    % G maj 7
  
  <f a c e> 2
  <f a b e>
  
  < bes d es g>1    % C min7   measure 9
  < a d es g>     % F7
  <a c d f >     %Bb maj 7
  <g bes d f>    %Eb msj 7   measure 12
  
  <g b c e>  %A min7   Measure 13
  <fis b c e>   %D7
  <fis a b d>2    % G maj 7
  <g b d fis>   %E min 7
  <g b c e>   %A-7
  <fis bes c es >   %D7
  
  < fis a b d>1    % Gmaj7 measure 17
  <as c d g>       %Bb7
  <g bes d f>     % Eb maj7
  <g bes c es>    % Ab
  
   <g b c e>         % A min7    Measure 21
  < fis  b c e>     % D7
  <fis a b d>    % G maj 7
  
  <f a c e> 2     %D-7
  <f a b e>        %G7
  
  
  <g b d e>1    %C maj7   Measure 25
  <g b c e>2         % A min7  
  < fis  b c e>     % D7 
  <a cis d fis>2   %B-7
  <g b d fis>
  <g b cis fis>    %A7
  <g bes cis e>    %Bb dim
  
     <g b c e>1         % A min7    Measure 29
  < fis  b c e>     % D7
  <fis a b d>2    % G maj 7
  <g b d fis>   %E min 7
  <g b c e>   %A-7
  <fis b c e>   %D7  
  
}

pianoLH =  \relative c  {
        %     VOICE 1                      VOICE 2
        << {  fis8^"complex lh" f e4 es   d~ }    \\    {  g,4 fis f e       }     >>
        <<   { d'4 ges  \tuplet 3/2 { as8 c4  } d4   }  \\       {  \tuplet 3/2 { es,,8 bes' as~ }  as4 bes gis'8 e,  }    >> 
        <<  { r2 e''2     }  \\    { es,,4 g'8 as a4. g8 }  >>
      << { es' 2 gis,2 }  \\  { as2 e,2 }  >>
    << { r8 g'4. as2  }  \\  { <a, e'>2  <bes f'> }  >>
    << { }  \\  { <c e>8 b a g fis e es d }  >>
    
    <<    {   }       \\      {  g4 b'~ b8 g fis e}   >>
    <d d'>8 c' b  a g f es d 
    c8 g' c c, bes g' c bes, 
    a f' e es d des c b 
    
    
    << {  a'4 as g gis4 }  \\  {bes,2.  e,4 }  >>
    <es d'>2 <b' a'>4 <bes as'>  
    <a g'>2 <bes as'>  <b a'>4 <e b'> <es bes'> <d a'>
    
    <g, fis'> <a g'> <bes as'> <b a'>
    <c b'>4 <b a'> <bes as'> <a g'>
    
    <g fis'>4 <g f'>  <fis e'>2
    es'4 f, <bes as'>2
    es,4 < bes'' f'>4 <a e'>2
    <as es'>2  <e, d'>
    <a e' g>2 <bes f' as> 
    <c e>4 <fis a> <a c><c es> 
    <<    {  d1 }           \\     {  b2~ b8 g fis e}    >>
    d4 <fis c'> g8 fis e d
    c1
    a2 d4 c
    b2 e
    a, bes
    a1
    d
    g2 e2 a2 d,2
  
}    % end of pianoLH
simpleRH =   \relative c' {
          << { d4 d2 d4  }  \\  { b2 bes4 a    }  >>
          << { d f bes d   }  \\  { as,2  <g' es>8 <ges es>  <d f>4  }  >>
          << { d'2  c4. b8 }  \\  { <f g>2 g  }  >>
          << {  c1 }  \\  {  g4 fis f e }  >>
          << { d4 d2 d4  }  \\  { b2 c }  >>
          << { d4 fis a c  }  \\  {b,2 g'8~ <e g> fis~ <fis es>   }  >>
          << { b1   }  \\  { fis4 f}  >>
          << {   }  \\  { f'8 e d c b as g f}  >>
          << {  <es es'>2 <es es'> }  \\  {   }  >>
          << { <es es'>4 g  gis a  }  \\  {   }  >>
          << {  d2 f,4 fis  }  \\  { r4 g r gis,4  }  >>
          << { g'2 fis4 g  }  \\  {   }  >>
          << { c4 c8 c c4 c8 c  }  \\  { <c, f>2 <des ges>  }  >>
          << {  c'4 e, f fis }  \\  { dis4 d des c  }  >>
          << {   b'1}  \\  { b,4 c des d }  >>
          << {   }  \\  {  e'8 c b a g e fis es }  >>
          \bar "||"
          << { d4 d2 d4  }  \\  { b2 b4 c }  >>
          << { d4 f bes d  }  \\  { c,4 <c d> <c es g>4  <e gis b>}  >>
          << { d'2 c4. b8  }  \\  { es,2 f }  >>
          << {  c'1 }  \\  { r4 <des, f> <des e>2 }  >>
          << { d4 d2 d4  }  \\  { a2 bes  }  >>
          << { d4 fis a c  }  \\  { <a, b>4 <c d > <d fis> es  }  >>
          << {  b'2. c,8 cis}  \\  { d4 <c es> <b e>4  }  >>
          << { <b d>8 <c e> <d f> <e g>  <f as> <as b> < b d> < d f>  }  \\  { }  >>
          << {  <g,  c e>4 < g  c e>2 < g  c e>4 }  \\  {  }  >>
          << {  e'4 a, b c}  \\  { <g a> f fis f }  >>
          << { d'2 fis,4 g  }  \\  { a2 d,  }  >>
          << { a'2. g4  }  \\  {  e2 r  }  >>
          << { d4 d2 d4  }  \\  { a2 b4 gis  }  >>
          << { d'4 fis a b  }  \\  { a,2 cis4 c  }  >>
          << { g'1~  }  \\  { <as, c>4 <gis b> <g bes > <fis a> }  >>
          << { g'1}  \\  {  <b, d>1 }  >>
     }
simpleLH =   \relative c {
          << { fis2 f4 e  }  \\  { g,2. fis4  }  >>
          << { es'2 as2 }  \\  {  f,2 bes4. e,8 }  >>
          << {  }  \\  { es4 g'8 as a4. g8 }  >>
          << {  es'1 }  \\  {  as,2. as,4 }  >>
          << {  g'2 as }  \\  {a,2 bes  }  >>
          << { g'2 c }  \\  {  a,2 d }  >>
          << { r2 e'4 es  }  \\  {g,1   }  >>
          << { d'8 c b a g f es d }  \\  {   }  >>
          << { c8 g' c c, bes g' c bes,  }  \\  {   }  >>
          << { a f' e es d des c b  }  \\  {   }  >>
          << {  r4 a'2  d,4}  \\  { bes,2. e4 }  >>
          << { d'  }  \\  { es,1  }  >>
          << { g'2 as2  }  \\  { a,2 bes  }  >>
          << { a'4 b bes a }  \\  { b,4 e es d }  >>
          << { fis4 g as a  }  \\  { g,4 a bes b  }  >>
          << { b'2 <fis a> }  \\  { c1  }  >>
          << {  fis2 ges4 g  }  \\  {g,2 as4 a }  >>
          << { as'8 f es d as'2}  \\  { bes,2   bes2 }  >>
          << { g'2 <fis c'> }  \\  { a,2 d }  >>
          << { r4 bes'4~ bes2    }  \\  { g,2 c }  >>
          << { fis2 g  }  \\  {b,2 c  }  >>
          << {  a'4 bes  a4 as }  \\  { d,8 des c b bes a ges as}  >>
          << { fis'1 }  \\  {g,1   }  >>
          << { r4 < e' f a> r <f b e>  }  \\  { d,4 r  g r }  >>
          << { e''4 e2 e4  }  \\  {  c4 b a8 as g ges}  >>
          << { <c e>4 <bes des> <a c> <as es'> }  \\  {f4 es d des8 c  }  >>
          << { <a' e>2 bes  }  \\  { b,2 e }  >>
          << { b'2 bes }  \\  {<cis, g'>1    }  >>
          << {e2 d  }  \\  {  b4 a gis e }  >>
          << { fis1  }  \\  {  d'8 des c b bes a g fis }  >>
          << {  es'4 d  des c}  \\  { f,4 e  es d}  >>
          << {  fis'1}  \\  {g,1  }  >>
     }
%++++++++++++++++++++++++++++++++
%
% Scheme Function to generate a complete score 
%
%++++++++++++++++++++++++++++++++

scoreSection =
#(define-scheme-function (myTitle  myRight myLeft myChords) (string? ly:music? ly:music? ly:music?)
    #{
      \score {
          \header { piece = \markup{\fontsize #4 \bold #myTitle }}
           \new PianoStaff 
         <<
       \chords {#myChords }
           \new Staff { \key g \major #myRight }
           \new Staff  { \key g \major  \clef "bass"  #myLeft }  
         >>
     }  
    #})

alto = \relative c' {
     b2 bes4 a as d
     g8 fis f e
     f4 fis g2 g4 es d c
     r g as a b c
     
     e8 d es fis
     e2 es d1
     
}

slashBass = {
      \relative c {
            \override NoteHead.style = #'slash
            \hide Stem
            \repeat unfold 32 {  e4 e e e  }
        }
}

roots =  \relative c {
          g2 fis f bes es, a as as a a d d g, g d' g, c c f, fis4 f
          bes2. e,4 es2 es a a d, es4 d g2 d a' d,
          g fis f bes es, es as as 
          a bes d, d g g d g c, c a' d4 c
          b2 e, a bes a a d, d g e a d,
     }
     
walkingBass = \relative c {
     g4 g d' fis, f c' bes e, 
     es g a e' as, es' c g8 as
     a4 g fis e
     d d'8 a fis4 d
     g fis e es d as' g b
     c bes a g f a c b
     bes a g e
     es g c bes 
     a g' fis f
  
      e4 c b a 
     g4 f e bes' a es d fis
     
     g g,8 d'  g4 fis
     f  c'8 b bes4 e,
     es4 bes' a g
     as es' c bes
     a4 g fis e
     
     d4 a' e' a,
     as es' f des
     d as g b
     c g' c, b
     a es' d c
     b a g e
     a a' g bes,
     a a e' es
     d c b a 
     g f e as
     a es d fis
  
     
    
     
}

%============SCORE================
\score {
  \new StaffGroup 
  <<
     \new Staff = "leadstaff"
     {
          \key g \major
      \lead
          \addlyrics \with { alignAboveContext = "leadstaff" }\heresLyrics
          \bar "|."
          \break
  %         \lead
               
     }
         \new PianoStaff 
         <<
              \new ChordNames { \baseChords \leadSheetChords   }
         
         \new Staff 
           {
                  \tempo 4=90
                  \key g \major		
% % melody and bass

                 \simpleRH
  %             \lead
                 \bar "|."
                 \pageBreak

                 ^"Simple Arrangement"
               \lead
               \bar "||"
               \pageBreak
     
           }  % end of treble staff
% ++++++++++BASS STAFF++++++++++++++++
           \new Staff 
           {
                  \key g \major
                  \clef "bass"
                  \simpleLH
                  \comping     
           } % end of bass staff
      >>
 >>   % end of Staff Group
 
}    % end of score 1

\scoreSection "Here's That Rainy Day" {\lead \lead} {\slashBass \slashBass } { \baseChords \leadSheetChords}

     \layout {}