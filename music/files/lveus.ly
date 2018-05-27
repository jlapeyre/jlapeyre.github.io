% LilyPond version
\version "2.6.3"

% La Vida Es un Sueno arr. by Marc Ribot
% Version 0.01 of this document


\include "lveusbass.ly"

#(set-default-paper-size "letter")

\paper {
  linewidth = 6.5\in
  bottommargin  = .3\in
  footsep = 0\in
}

\header {
  title = \markup{"La Vida Es Un Sueño"}
  composer = "Arsenio Rodriguez"
  arranger = "Arr. Marc Ribot"
  enteredby="John Lapeyre"
  tagline = "Vers. 0.01 Oct. 9, 2005. Transcription by John Lapeyre. Engraving by LilyPond 2.6.3"
  lastupdated = "2005/Sept/25"
}



% The opening part of the piece is unaccompanied guitar.
introduction = { 
% Introduction , solo guitar
   % Raise the metronome tempo mark a bit so it doesn't hit the notes in the staff
%  \override Glissando #'arrow = ##t   
   \override Score.MetronomeMark #'padding = #9.0
   \override Staff.DynamicLineSpanner #'padding = #4.0
%   \override Staff.DynamicTextSpanner #'padding = #7.0
   % Raise the numerals giving the bar numbers so they don't hit the staff.
   \override Score.BarNumber     #'padding = #2.0
   \override Staff.Fingering  #'padding = #1.1
%   \override TextScript #'extra-offset = #'(0 . 0)
   % Glissandi are invisibly short without this
   \override Glissando #'minimum-length = #5
   \override Glissando #'spacing-procedure  = #Spanner::set_spacing_rods
%   \override Glissando #'thickness = 3

   % make the tempo mark
   \tempo   8=144 
   \time 2/4 
    <c-3 e-4>8^\markup { \box\line\tiny{ C} } 
     ^\markup{\circle\bold A}
     \mf \>  
    <c e>   <d-3 fis-4-.>8
   <g-2 e-3>8~ \arpeggio-- <g e>8 \glissando   

    <fis d>8 <c e> \p \!
    <<  {r8  \once \override Staff.Fingering  #'padding = #2.0 <d-4 fis-4> \mf \>
      <c-4 e-4> <b dis> <c e> \! } \\ 
     \once \override Staff.Fingering  #'padding = #0.0
   {c,8-1 | c2}  >> 
   \time  5/8
   \times 5/7 {c8-2^\markup{\box\line\tiny{CMaj7}}
      \mf e g c b
       <bes-2   fis-3>4^\markup{\box\line\tiny {C\sharp{sus4/6} or F\sharp}}}  | 
   % BAR 5
   \time 6/8
   \times 2/3 {   <  bes-2 cis-1 >8->^\markup{\box\line\tiny{F\sharp}}  \glissando
          \>  
       <b d>  <c-3 e-4> }
          <d-3 fis-4>16  <d fis> 
        <d fis>8^\markup{\box\line\tiny{G}}
          <c e>  <d b> \pp \!  |
    %BAR 6
    \time 4/4
   \override Staff.DynamicLineSpanner #'padding = #1.0
    g,,8_\thumb^\markup{\box\tiny{G}}   \<
   \override Staff.DynamicLineSpanner #'padding = #3.0
     <c'-. e>  <d-. b> \mp <cis-. bes>  <d-. b>  g,,8-.-3_"rit. poco"  \> fis-2-. f-1-. \! |

    %Bar 7
    \time 7/8
   \override Staff.Fingering  #'padding = #2.1	
    \times 2/3 {e16-"a tempo"^\markup{\box\line\tiny {E7}}
     \< gis-3 b-1} 
   \revert Staff.Fingering  #'padding
     d8-0  e16-2 f-1 <gis-1 b-0>8  c8-3 \! \> b8-3 a-1 \! |
     %BAR 8
     \time 4/4

      <<a,2-0^\markup{\box\line\tiny{ Am}}
       \mf \\ {r8  
\once  \override Staff.Fingering  #'padding = #2.0  
          <f'-3 d'-2>
\once  \override Staff.Fingering  #'padding = #2.0  
        <dis-3 c'-2> <d-0 b'-0>} >>
%      a,8 \mf   <f' d'> <dis c'> <d b'>
      f8->-2 e-1 

     \override Staff.Fingering  #'padding = #2.0
     \times 2/3 {c-2 a-0 g-2}   |
     \revert Staff.Fingering  #'padding

     %BAR 9

     << fis2-1^\markup { \fret-diagram-terse #"2;x;2;2;o;x;" }
              ^\markup {\box\line\tiny{F\sharp m{7add4}}  } \\ {r8 \> e'8-2 a-3 b-0}>>
     << {dis,2-1} \\ {c'8-4 b-4 bes-4 b-4} >>    |

     %BAR10

     << {a,2-0^\markup { \fret-diagram-terse #"x;o;7;6;7;x;"}
             ^\markup \box\line\tiny{ A6}     }  \\ 
      {
       \hideNotes \grace e'8   \glissando \unHideNotes 
       fis'=''8^.-3 a,-2 cis-1 fis } >> 

     << dis,2-2
      ^\markup {\fret-diagram-terse #"x;6;5;6;6;x;" }
        ^\markup \box\line\tiny{E\flat 9}
              \\  {f'8_4_\markup{rit. poco} g,_1 cis_3 f \p } >>   |
% Spent an hour trying to move either rit poco or fingerings out
% of the way. never really succeeded
%     \override TextScript #'padding = #5
%     \revert TextScript #'padding

     %BAR 11
     <d, fis c' e >1^\markup {\fret-diagram-terse #"x;5;4;5;5;x;"}
          ^\markup \box\line\tiny{D9} \bar "||" |

% End Introduction , solo guitar
   }

versea = { 

         % This section is one guitar and one voice (vocal part is not scored)          
	  %BAR 12
         << {g,1\mf ^\markup{ \fret-diagram-terse #"3;5;5;4;x;x;"  }
                  ^\markup{\box\tiny G} _\markup{ First verse }
                     ^\markup{\circle\bold B}  }
            \\ {s8 d'8~d2.} \\ {s4 g2.} \\ { s4. \> b8~b4 \!}   >>   |
           
	  %BAR 13
         << {b,1\mf^\markup {\fret-diagram-terse #"7;9;9;8;x;x;"}^\markup{\box\tiny B}}
                \\ {s8 fis'8~fis2.} \\ {s4 b2.} \\ { s4.\>  dis8~dis4 \!} >>  |
 
         % BAR 14
         << {a,2\mf^\markup{\fret-diagram-terse #"5-1-(;7-3;7-4;5-1-);x-1;x-1;"}
              ^\markup{\box\tiny {Am}} }
             \\ {s8 e'8~e4} 
              \\ {s4 a4} \\ 
              { s4. \> c8 \! } >>

	  e,8-2^\markup { \fret-diagram-terse #"x;7;6;7;8;x;"}
         ^\markup{ \hspace #-2 \raise #-20 \box\line\tiny{E{7\sharp 9}}}
         gis-1  <e d'_3 g>8^\markup{ \hspace #2.0 \raise #1.5
                  \fret-diagram-terse #"x;7-2;6-1-(;7-3;6-1-);x;"  }
		  ^\markup{\raise #-2.0 \box\line\tiny {E\super{7\flat 9}}}
               \arpeggio  f'8-1 |

         %BAR 15
         < a,, e' a c e>4\arpeggio ^\markup 
             {\hspace #2.0 \fret-diagram-terse #"5-1-(;7-3;7-4;5-1;5-1;5-1-);"}
           ^\markup{\box\tiny Am}
        \override NoteHead #'style = #'cross
           < e' a c  >8
        \revert NoteHead #'style
         r8 r2  |

         % BAR 16
         a='8-3^\markup{ \fret-diagram-terse #"x;x;7;5;5;x;"}^\markup{\box \tiny Am} 
                c-1 e-1 a, 

         gis-2^\markup{ \fret-diagram-terse #"x;x;6;5;5;x;"}
             ^\markup{ \box\line\tiny {A\flat +}} 
             ^\markup{ \box\line\tiny {Am Maj 7}}
             c e gis, 


         %BAR 17
         g-1^\markup{\fret-diagram-terse #"x;x;5;5;5;x;"}
          ^\markup{\box\line\tiny {C/G}}
          ^\markup{\box\line\tiny {Am7}} c-1 e-1 g,
         fis-1^\markup{ \fret-diagram-terse #"x;x;4;5;5;x;"}
          ^\markup{\box\line\tiny {F\sharp dim 7}}
          ^\markup{\box\line\tiny {Am 6}}
         c'-3 e8-4~e16. 
         e,,32   

	 %BAR 18
	 g8-1^\markup{"" \raise #1.5 \fret-diagram-terse #"3;5;5;4;x;x;"}
           ^\markup{\box\tiny G}  
         d'8-3 g-4 b-2
         << c,4^\markup {"" \raise #1.5 \fret-diagram-terse #"x;3;5;x;5;x;"}
             ^\markup{\box\line\tiny{C}} \\  {e'8 g,} >> 
       \override TextScript #'padding = #3	 
        << c,4-2^\markup { \hspace #1.5 \fret-diagram-terse #"x;3;x;2;4;x;"}
               ^\markup{\box\line\tiny {Cm6}} \\ {dis'8-1 a-4}>>  |
       \revert TextScript #'padding

	%BAR 19
         <g, d' g'>4^\markup{\hspace #1 \box\tiny G}
        _\markup {\hspace #1.0 \fret-diagram-terse #"3-1-(;5-3;x;x;x;3-1-);"}
         d'4\fermata r2 |

	 %BAR 20
         << {g,1^\markup{ \hspace #1.0 \fret-diagram-terse #"3;5;5;4;x;x;"}
               ^\markup{\box\line\tiny{ G}}    } \\ 
              {s8 d'8~d2.} \\ {s4 g2.} \\ {s4.  b8~b4} >>  |

	 %BAR 21
        << {b,1^\markup{ \fret-diagram-terse #"7-(;9;9;8;7-);x;"}
                ^\markup{\box\line\tiny{ B}}} \\
          {s8 fis'8~fis2.} \\ {s4 b2.} \\ {s4.  dis8~dis4} \\ {s2 fis2} >> |

	 %BAR 22
         << {e,2-1^\markup{"" \raise #1.5 \fret-diagram-terse #"x;x;2;4;5;3;"}
                    ^\markup{\box\line\tiny {Em}}}
         \\ { s8 b'8-3~b4} \\  { s4 g'8-2  e8-4 } >>
         << {e,4 } \\ 
               {  b'4} \\  { e8 dis-4^\markup{ \fret-diagram-terse #"x;x;2;4;4;3;" }
                 ^\markup{\hspace #-3.0 \box\line\tiny {Em/maj7}}} \\ {g4} >>
         << {e,4_\markup{\box\line\tiny {Em7}} } \\ {  b'4} \\  { dis8 d-2 } \\ {g4} >> |

         %BAR 23
         < cis,,_3 e_1   e'_4 \fermata >1 \arpeggio ^\markup 
              {  \fret-diagram-terse #"x;4;2;x;5;x;"}
             ^\markup{\box\line\tiny {C\sharp m}}
     \bar "||"
     % End of solo guitar part, band enters in next section
}


verseb = {

         %BAR 24
	  \override Staff.DynamicLineSpanner #'padding = #1.0
          c=,4\p^\markup{ \fret-diagram-terse #"x;3;5;5;5;x;"}
	    ^\markup{\box\tiny C}
            ^\markup{\circle\bold A}
	   \<
             <g' c e-.>8 r  
            g4^\markup \fret-diagram-terse #"x;x;5;5;5;x;" e'8 c8  |

          %BAR 25
           cis,^\markup{ \fret-diagram-terse #"x;4;5;3;5;x;"}
	   ^\markup{\hspace #-1
              \box\line\tiny {C\sharp  dim/6 }}
            \mp \! \>
          g' bes \p \!  g e' bes g bes |

          %BAR 26
           g,->^\markup {\fret-diagram-terse #"3-(;5;5;4;3-);x;"}
	    ^\markup{\box\tiny G}
            d' g b d 
          g,,-.->  \mp  fis-.->  f-.->     |
        
         %BAR 27
         \once \override TextScript #'padding = #2.5
         \times 5/7 {e8__^\markup{\raise #3.0 \box \tiny  E7}
          gis__ b__ d__ e__ f__ gis__ }
          c8-- b a |

         %BAR 28
  % can't get this textscript padding stuff to work anywhere

         <b_3 d_2>4^\markup{\raise #3 \box \tiny Am} 

         <a-3 c-2>8 <gis-1 b-0>
        \override Staff.Fingering  #'padding = #2.0
         \times 2/3 {e-1f-2 (e)} c-2 a-0 |

        \revert Staff.Fingering  #'padding

         %BAR 29
         fis=8^\markup{ \fret-diagram-terse #"2;x;2;2;o;x;"}
               ^\markup {\box\line\tiny{F\sharp m {7add4}}  } e' a b 
         << {dis,2} \\ {c'8-4 b-4 b-4 bes-3} >>  |
       
         %BAR 30
        \override Staff.Fingering  #'padding = #2.0
         << a,1_0 \\ {b'8^2 bes-1 b cis-4^\markup {\box\tiny{A}} b cis b cis }>> |
        \revert Staff.Fingering  #'padding       

         %BAR 31
         <d, fis d'>1\arpeggio^\markup {\fret-diagram-terse #"x;5;4;7;x;x;" }
               ^\markup{\box\tiny D}

	 %BAR 32
         r1
         \bar "||"
       }

% Guitar solo, with band backing, no vocal
guitarsolo = \relative c' {
     \set Staff.instrument = "Elect. Guitar"
     \set Staff.instr = "Elec. G. "
     \set Staff.midiInstrument = #"overdriven guitar"
 %BAR 33
           \time 2/4    
         \override TextScript #'padding = #2
           \times 2/3 {<b''=''-3 d-1>8^\markup{\italic X}_"(guitar solo)"

            \f <b d>  <b d> }
            \times 2/3 { <b d> <b d>  <bes-2 d-1>8  }

         %BAR 34
          \time 4/4
	  <bes=''-2 g-3>8^\markup {\box\line\tiny{G}}
            ^\markup{\circle\bold B}
                 <b d>8 r4 r16
               d,16-1^\markup{\italic VII} g-2 a-4 b-1-> bes-1 a g  |

	  %BAR 35
            a->^\markup{\box\tiny B7}  r a\glissando r fis8-3^\lheel^\markup{\italic VII}
            \glissando
            r8. <c-1 e-1>16 \arpeggio f-2 fis-3 g8-4 fis16 (e)  |

          %BAR 36
           c8^\markup{\box \tiny Am}
            \glissando \override TextSpanner #'edge-text = #'("V" . "")
            r8 a8-2^\markup{\italic I}  
            e-2^\markup{\box \tiny E7}
            gis8-1 r16 e16-1 g8-4^\lheel r16 e16-1  |

         \revert TextScript #'padding

%         \override Score.SeparationItem #'padding = #0.8	
          %BAR 37
          fis4.-3^\markup{\box \tiny Am} \glissando
         \hideNotes \grace e, \unHideNotes  
             r8.
%         \revert Score.SeparationItem #'padding
           \override TextScript #'padding = #5
            e=16^\markup{\box{ \tiny \line{ Am add 2}} or \box\tiny\line{ Esus4 add 5+}}
          \startTextSpan  a-1 b-3_\markup{\tiny {roll 3 to barre}}
            c-4 e-3 a-3 b-1 |
           \revert TextScript #'padding

          %BAR 38
          c-1^\markup{\box \tiny \line{Am (walk bass down to F\sharp) }}
           e-1 a-1 b-3 c8-4
            \stopTextSpan
             r8 gis,,8-3->^\markup{\italic II} r16   d'32-0 e-1  \times 2/3 {f8-2-> e d } |

          %BAR 39
             c8.-2  b16-1 d16-4-- c16  b16  a16-4 fis8-1
               ^\markup{\box\tiny\line{F\sharp}}
             \override TextSpanner #'edge-text = #'("III (Gm pentatonic)" . "")
             r8 bes''16 \startTextSpan
              g f d16-3_\markup{\tiny "bend"}_\markup{\circle \finger 3} ( | 

          %BAR 40 
           c-3)  bes^\markup{\box\tiny G} g16 
             bes16 c bes c bes d8->^\markup{ \tiny bend}
                  ^\markup{\box\tiny{ C7}}
             c16 bes c bes g8  |

          %BAR 41
             g='16^\markup{\box\tiny{ G}} \stopTextSpan 
            d'16-1^\markup{"" \raise #5.0 \column{"" \raise #5.0 \small "G Maj Scale"  \raise #5.0 
             \italic XII} }
                  g_1 b_1 d_4 g_4 fis_3 e_1
             \override TextSpanner #'edge-text = #'("VII" . "")
              \override TextSpanner #'padding = #2.5
             \times 2/3 {d16-1^\markup{\italic X} (e-3 d)} c8-4   \times 2/3 {b16-1
               \startTextSpan (c-2 b) } a8  |

          %BAR 42
             g8 r16 fis16 a8 
            \once \override TextScript #'padding = #1.5
            \times 2/3 { r32^\markup{ "" \raise #3.2 \small{(approx.)}}
                _\markup{\hspace #-2 \tiny { \note-by-number #4 #0 #1 \note-by-number #4 #0 #1
		\note-by-number #4 #0 #1 = \note-by-number #3 #0 #1
                   }}
                 g32~g8} 
                b8 r16 a16 c8 b8 \stopTextSpan 
             \revert  TextSpanner #'padding
             \revert  TextSpanner #'edge-text      |

           %BAR 43
             < b_3 dis_2 >4->^\markup{\box\tiny{B7}}
            ^\markup{\italic X}~< b dis >16
             \override TextSpanner #'edge-text = #'("VII" . "")
             \override TextSpanner #'padding = #0.9
             d16-4  \>
             \startTextSpan
              cis c   \times 2/3{ b8-1 g-2 e-3 } \times 2/3{ cis-1 d-1 dis-2} |

            %BAR 44
              \override TextScript #'padding = #4.5 
              e4-3^\markup{\box\tiny Em7} \mf
              \revert TextScript #'padding
            << {g4._2-> g4 \f g8 } \\ {r8 e8 dis4 d}>>     |

            %BAR 45
              <  cis  g'  >1^\markup{\box\tiny \line{C\sharp 5}} \stopTextSpan
             \revert  TextSpanner #'padding
             \revert  TextSpanner #'edge-text
            \bar "||"
}


guitarparttwo = \relative c' {
  % guitar part. The section has vocal, lead guitar and full band.
   \set Staff.instrument = "Elect. Guitar"
   \set Staff.instr = "Elec. G. "
   \set Staff.midiInstrument = #"overdriven guitar"
%   \set Staff.MetronomeMark \override #'padding = #2.0

   %BAR 46
   c4.-1^\markup { \hspace #3 \fret-diagram-terse #"x;3;5-(;5;5-);x;"}
       ^\markup{\hspace #3 \box\tiny{C}}
       ^\markup{\circle\bold A}
   _"(final verse)"
   g'8-3 c-3 e-3 c g     |

   %BAR 47
   cis,4-2^\markup{ \fret-diagram-terse #"x;4;5;3;5;x;" }
      ^\markup{\hspace #-1 \box\line{\tiny {C\sharp} dim/6 }}
        bes'8-1 g-3 e'-4 bes e bes |

    %BAR 48
   < b-1  g-2>4.^\markup{\circle\finger  3}
     ^\markup{\box\tiny G}
    <b g>8 <b g>  <b g>->
    <bes-1 fis-2>-> <a-1 f-2>->  |

    %BAR 49
   <gis-1 e-2>4^\markup{\box\tiny {E7}}
%   \override Glissando #'minimum-length = #5.0
%   \override Glissando #'thickness = #5.0
   << {  e'4-2 \<  }  \\ { r8 gis16-1 b16-4 \glissando} >>  
   \once \override Score.SeparationItem #'padding = #1.0
        << s4 \f  \\d4-4   >> c8-4 \>  b-3 |

    %BAR 50
   a^\markup {\fret-diagram-terse #"x;x;7;5-(;5;5-);"}
      ^\markup{\box\tiny {Am}}
    e  c a-3 gis-2 c-1 g-1 c-1  |

    %BAR 51
    fis,-1^\markup {\fret-diagram-terse #"x;x;4;5;5;x;"}
       ^\markup{\box\tiny\line {F\sharp m}}
     c'-2 e-4 c dis-3 \mf c dis c  |

    %BAR 52
      b8-1->^\markup{\box\tiny{A7}} g-2 b-> g b-> g b-> g   |

    %BAR 53
      e'-3^\markup{\box\tiny {D}}
         e e e e e e e  |

    %BAR 54
    \override TextSpanner #'edge-text = #'("VIII" . "")
    \override TextSpanner #'padding = #1.1
      <g,='-1 c-1>4^\markup{\box\tiny {C}} ^\markup{\circle\bold A}
    r16  \startTextSpan g'16
   \override TextScript #'padding = #3 
     c d( dis8^\markup{\small bend} d16) c d g, c8 |
   \revert TextScript #'padding

     %BAR 55
     bes4^\lheel^\markup{\box\tiny\line{C\sharp m}} \stopTextSpan
      <e,-1 cis-2>4  <e-2 g-1> <e cis>  |

    \override TextScript #'padding = #2 
     %BAR 56
     \times 2/3 { r8^\markup{\box\tiny {G}} d,8_1 g_1 }  \times 2/3 
           {b-4  d-1^\markup{\raise #5.0 "" \raise #5.0 \italic "VII"} g-2 } 
      \times 2/3  {b-1-. a-4-. g-2-. } \times 2/3  {fis-1-. d-1-. dis-2-. }  |

    \revert TextScript #'padding

     %BAR 57
      e_3 e,^\markup {\fret-diagram-terse #"x;7;9-(;9;9-);x;"}
        ^\markup{\box\tiny {E7}}
      b' e gis e e, b'  |

      %BAR 58
      <a c>4^\markup{ \fret-diagram-terse #"x;x;7;5-(;5;5-);"}
       ^\markup{\box\tiny {Am}}
       \times 2/3 {a'8 e c}  gis8 c16 e 
      { g,8 e'16 g,} |

      %BAR 59
      <fis c' dis  >4^\markup{ \fret-diagram-terse #"x;x;4;5;4;x;"}
           ^\markup{\box\tiny\line {F\sharp m}}
       <fis c'>8 <fis c'>8
      <c' dis> <c dis> <fis, c'> <fis c'>  |

      %BAR 60
       a^\markup{\box\tiny {A}} e cis' e, a e a4 |

      %BAR 61
      d,8^\markup{\box\tiny {D}} \glissando 
        \hideNotes \grace e, \unHideNotes 
       r4.
}

guitarending = \relative c' {
   \set Staff.instrument = "Elect. Guitar"
   \set Staff.instr = "Elec. G. "
   \set Staff.midiInstrument = #"overdriven guitar"

   %BAR 62
   <c e'>4.^\markup{ \fret-diagram-terse #"x;3;x;x;5;x;"}
      ^\markup{\box \tiny C}  r8   
  <c a' dis>4.^\markup{ \fret-diagram-terse #"x;3;x;2;4;x;"} \arpeggio
       ^\markup{\box \tiny Cm6}
   r8
  \override TextScript #'padding = #2 
  r16  d'16-1^\markup{ {\box \tiny G} \italic VII} g-2 d'-4
       b-1 g-2 d-1
  \revert TextScript #'padding
   \override TextSpanner #'padding = #0.0
   \override TextSpanner #'direction = #-1
   \override TextSpanner #'edge-text = #'("rit " . "")
     e-3
    %BAR 63
    \startTextSpan
        b-3 d-1 
       g,-1^\markup{\circle\finger  4} \glissando b d,-2^\markup{\circle\finger  4}
       g-2^\markup{\circle\finger  5}\glissando
    \override Score.SeparationItem #'padding = #0.8
    \set stringNumberOrientations = #'(down right up)
        b,-2^\markup{\circle\finger 6}
         \glissando g \stopTextSpan
   \revert Score.SeparationItem #'padding
    <g b' fis'>2^\markup \fret-diagram-terse #"3;x;x;x;o;2;" ~<g b' fis'>2 
   \bar "|."

}


sologuitar = \relative c'' {
       \clef treble
       \key g \major
       \set Staff.midiInstrument = "electric guitar (jazz)"
	\introduction
        \versea
        \verseb
}



\score {
 \new StaffGroup
   \relative <<
   \new Staff { \sologuitar  \break  << {\guitarsolo  \guitarparttwo \guitarending} 
               \new Staff {  \basspartone \bassparttwo} >> }
%    \new Staff {    << { \guitarparttwo \guitarending} \new Staff {   \bassparttwo } >> }

   >>
  \layout {   }
  \midi {  } %\tempo 4=70 }
}