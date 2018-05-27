\version "2.6.3"
% bass part during guitar solo
basspartone = \relative c { 
  \set Staff.midiInstrument = #"electric bass (finger)"
  \set Staff.instrument = "Elect. Bass Guitar "
  \set Staff.instr = "Bass G. "
  \clef bass
  \key g \major

  %BAR 33
  \time 2/4 { r4 r8 e,} |
  
  %BAR 34
  \time 4/4
  g8 r4 b4. d4 |

  %BAR 35
  b4. fis4. c'8 d8 |

  %BAR 36
  d4. d8 a'8 r8 a cis |

  %BAR 37
  d4. d8 d,4 g,8 gis |

  %BAR 38
  a4. a8 gis4. gis8 |

  %BAR 39
  g4. g8 fis8 r8  bes4 |

  %BAR 40
  g8 g r8  g16 gis a8 a,8 d4 |

  %BAR 41
  g8 r8 d4. e4  fis8 |

  %BAR 42
  g4 r8 b4. d8 e8 |

  %BAR 43
   b4. dis4. fis8 b8 |

  %BAR 44
   e,4. b8 e e dis d  |

  %BAR 45   
  cis1
}
 
bassparttwo = \relative c {
  \clef bass
%  \key g \major  this prints an extra key sig in wrong place

  %BAR 46
  c4. e4 g8 c g |

  %BAR47
  cis4. cis4 cis8 a,8 aes |

  %BAR 48
  g4.  g,4 g'8 fis f |

  %BAR 49
  e4 gis b' e, |

  %BAR 50
  a,4. d8 e g a f |

  %BAR 51
  fis4.  c16 c b2 |

  %BAR 52
  a8 a a a a a a a |

  %BAR 53
  d d d d d d d d |

  %BAR 54
  c4 e g c  |

  %BAR 55
  cis e cis a8 fis |

  %BAR 56
  g4. b8 d  g, fis fis |

  %BAR 57
  e e, e' e, e' e, a g  |

  %BAR 58
  a4. a8 c e g a16 e  |

  %BAR 59
  fis4. cis16 cis  b2 |

  %BAR 60
  a4. a8 a a a a |

  %BAR 61
  d r8 r2.
}

