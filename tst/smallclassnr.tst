gap> START_TEST( "Testing SmallClassNr" );

#
gap> grps := AllSmallClassNrGroups( [ 1..14 ] );;
gap> Collected( List( grps, NrConjugacyClasses ) );
[ [ 1, 1 ], [ 2, 1 ], [ 3, 2 ], [ 4, 4 ], [ 5, 8 ], [ 6, 8 ], [ 7, 12 ], [ 8, 21 ], [ 9, 26 ], [ 10, 37 ], [ 11, 35 ], [ 12, 51 ], [ 13, 53 ], [ 14, 92 ] ]

#
gap> NrSmallClassNrGroups( 10 );
37
gap> NrSmallClassNrGroups( 15 );
Error, the library of groups of class number 15 is not available

#
gap> IsPSL( SmallClassNrGroup( 10, 37 ) );
true
gap> SmallClassNrGroup( 2, 2 );
Error, there is just 1 group of class number 2
gap> SmallClassNrGroup( 10, 38 );
Error, there are just 37 groups of class number 10
gap> SmallClassNrGroup( 15, 15 );
Error, the library of groups of class number 15 is not available

#
gap> G := OneSmallClassNrGroup( [ 4..11 ], IsSolvableGroup, IsNilpotentGroup, false, DerivedLength, [ 3, 4 ], IsSupersolvableGroup );;
gap> Size( G );
54
gap> NrConjugacyClasses( G );
10
gap> H := OneSmallClassNrGroup( [ 4..11 ], IsSolvableGroup, IsNilpotentGroup, false, DerivedLength, [ 4 ], IsSupersolvableGroup );
fail
gap> OneSmallClassNrGroup( 14, IsSolvableGroup, false, IsSL  );
Group([ (1,2,4,8)(3,6,12,9)(5,10)(7,14,13,11), (8,12)(9,13)(10,14)(11,15) ])
gap> OneSmallClassNrGroup( 15, IsSolvableGroup, false, IsSL  );
Error, the library of groups of class number 15 is not available
gap> AlternatingDegree( OneSmallClassNrGroup( 14, IsSolvableGroup, false, IsAlternatingGroup ) );
8

#
gap> STOP_TEST( "smallclassnr.tst" );
