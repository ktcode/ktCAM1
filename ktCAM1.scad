//
// ktCAM1
//
//


gap1 = 0.001;
gap2 = 0.002;

circle = 76;
panel_thick = 2;

A = 0;
L = 0;
R = 0;
B = 1;


BOXINNE = 30;
BOXBASE = BOXINNE+panel_thick*2;




module BOX_R()
{
    difference()
    {
        cube( [BOXBASE, BOXBASE, BOXBASE] );
        translate( [BOXBASE/2, BOXBASE/2, BOXINNE-gap2] ) cylinder( panel_thick*3, 18/2, 18/2, $fn=100 );
        translate( [BOXBASE/2, BOXBASE/2, 15] ) difference()
        {
            union()
            {
                sphere(r = 29/2);
                translate( [0, 0, 9] ) cylinder( 9, 22/2, 20.5/2 );
                translate( [0, -14.3, 0] ) rotate( [90, 0, 0] ) cylinder( 2, 3/2, 3/2, $fn=10 );
            }
            translate( [0, 0, -8-BOXBASE/2] ) cube( [BOXBASE, BOXBASE, BOXBASE], center=true);
        }
    }
}
        
            
if( A )
{
    difference()
    {
    union()
    {
    difference()
    {
    union()
    {
    translate( [30, BOXBASE/2, 0] ) rotate( [0, -45, 180] ) BOX_R();



    translate( [-30, -BOXBASE/2, 0] ) rotate( [0, -45, 0] )
    {
        union()
        {
            difference()
            {
                cube( [BOXBASE, BOXBASE, BOXBASE] );
                translate( [(BOXBASE-24)/2, (BOXBASE-24)/2, (BOXBASE-24)-panel_thick/2] ) cube( [24, 24, 24] );
                translate( [BOXBASE/2, BOXBASE/2, BOXINNE-gap2] ) cylinder( panel_thick*3, 13/2, 13/2, $fn=100 );
            }
        }
    }



    difference()
    {
        translate( [-(circle-14)/2, -BOXBASE/2, -4] ) cube( [circle-14, BOXBASE, (BOXBASE*sqrt(2))/2+4] );
        translate( [30, BOXBASE/2+gap1, 0] ) rotate( [0, -45, 180] ) cube( [BOXBASE, BOXBASE+gap2, BOXBASE] );
        translate( [-30, -BOXBASE/2-gap1, 0] ) rotate( [0, -45, 0] ) cube( [BOXBASE, BOXBASE+gap2, BOXBASE] );
    }
    }
    if( L == 0 )
    {
        translate( [0, -100, 0] ) cube( [200, 200, 200], center=true);
    }
    if( R == 0 )
    {
        translate( [0, 100, 0] ) cube( [200, 200, 200], center=true);
    }
    //translate( [-101.5, 0, 0] ) rotate( [0, 45, 0] ) cube( [200, 200, 200], center=true);
    //translate( [101.5, 0, 0] ) rotate( [0, -45, 180] ) cube( [200, 200, 200], center=true);
    }
    }
    translate( [-(circle-14)/2+panel_thick, -BOXBASE/2+panel_thick, -10-gap1] ) cube( [circle-14-panel_thick*2, BOXBASE-panel_thick*2, (BOXBASE*sqrt(2))/2+10-panel_thick] );
    translate( [-40, -15/2, 20] ) rotate( [0, 45, 0] ) cube( [30, 15, 10] );
    if( L )
    {
        translate( [49, 0, 23] ) HOLE();
        translate( [29, 0, 43] ) HOLE();
        translate( [-49, 0, 23] ) HOLE();
        translate( [-29, 0, 43] ) HOLE();
    }
    }
    if( R )
    {
        translate( [49, 0, 23] ) PIN();
        translate( [29, 0, 43] ) PIN();
        translate( [-49, 0, 23] ) PIN();
        translate( [-29, 0, 43] ) PIN();
    }
}



if( B )
{
    translate( [0, 0, -(10+panel_thick)] ) difference()
    {
        cylinder( 10+panel_thick, (circle+panel_thick+1)/2, (circle+panel_thick+1)/2, $fn=100 );
        translate( [0, 0, -gap1] ) cylinder( 10+gap1, circle/2, circle/2, $fn=100 );
        translate( [-(circle-14)/2-1/2, -BOXBASE/2-0.5/2, 10-gap1] ) cube( [circle-14+1, BOXBASE+0.5, panel_thick+gap2] );
    }
}


module PIN()
{
    rotate( [90, 0, 0] ) cylinder( 5, 1.5, 1, $fn=10 );
}
module HOLE()
{
    rotate( [90, 0, 0] ) cylinder( 5, 2, 1.5, $fn=10 );
}
