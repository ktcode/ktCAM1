//
// ktCAM1
//
//


gap1 = 0.001;
gap2 = 0.002;

circle = 74.5;
panel_thick = 2;

A = 1;
B = 1;
C = 1;
D = 1;

BOXINNE = 30;
BOXBASE = BOXINNE+panel_thick*2;

if( A )
{
    translate( [30, BOXBASE/2, 0] ) rotate( [0, -45, 180] )
    {
        union()
        {
            difference()
            {
                cube( [BOXBASE, BOXBASE, BOXBASE] );
                translate( [panel_thick, panel_thick, -gap1] ) cube( [BOXINNE, BOXINNE, BOXINNE] );
                translate( [BOXBASE/2, BOXBASE/2, BOXINNE-gap2] ) cylinder( panel_thick*3, 18/2, 18/2, $fn=100 );
            }
        }
    }
}



if( B )
{
    translate( [-30, -BOXBASE/2, 0] ) rotate( [0, -45, 0] )
    {
        union()
        {
            difference()
            {
                cube( [BOXBASE, BOXBASE, BOXBASE] );
                translate( [panel_thick, panel_thick, -gap1] ) cube( [BOXINNE, BOXINNE, BOXINNE] );
                translate( [BOXBASE/2, BOXBASE/2, BOXINNE-gap2] ) cylinder( panel_thick*3, 18/2, 18/2, $fn=100 );
            }
        }
    }
}



if( C )
{
    difference()
    {
        translate( [-(circle-14)/2, -BOXBASE/2, 0] ) cube( [circle-14, BOXBASE, (BOXBASE*sqrt(2))/2] );
        translate( [30, BOXBASE/2+gap1, 0] ) rotate( [0, -45, 180] ) cube( [BOXBASE, BOXBASE+gap2, BOXBASE] );
        translate( [-30, -BOXBASE/2-gap1, 0] ) rotate( [0, -45, 0] ) cube( [BOXBASE, BOXBASE+gap2, BOXBASE] );
    }
}



if( D )
{
    translate( [0, 0, -(10+panel_thick)] ) difference()
    {
        cylinder( 10+panel_thick, (circle+panel_thick)/2, (circle+panel_thick)/2, $fn=100 );
        translate( [0, 0, -gap1] ) cylinder( 10+gap1, circle/2, circle/2, $fn=100 );
        translate( [-(circle-14)/2, -BOXBASE/2, 10-gap1] ) cube( [circle-14, BOXBASE, panel_thick+gap2] );
    }
}

