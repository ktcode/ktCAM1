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

if( A )
{
    BOXINNE = 30;
    BOXBASE = BOXINNE+panel_thick*2;
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
    BOXINNE = 30;
    BOXBASE = BOXINNE+panel_thick*2;
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
    translate( [0, 0, -(10+panel_thick)] ) difference()
    {
        cylinder( 10+panel_thick, (circle+panel_thick)/2, (circle+panel_thick)/2, $fn=100 );
        translate( [0, 0, -gap1] ) cylinder( 10+gap1, circle/2, circle/2, $fn=100 );
    }
}


