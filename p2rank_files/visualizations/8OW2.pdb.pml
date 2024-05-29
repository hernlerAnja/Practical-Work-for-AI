
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/8OW2.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/8OW2.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [8737,8738,8739,8740,8741,8742,8671,8083,8084,8668,8670,8672,8690,8135,8824,8736,10265,10264,1029,1030,8093,8094,8091,8095,8098,8082,10243,11596,11615,10266,11621,11624,10247,11582,11232,11288,11289,11212,11227,11290,11161,8154,11159,11162,11165] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [10524,10617,10549,10550,10657,10482,12821,11891,11885,11862,11860,11943,11027,12998,12999,12773,12980,11889,12820,11026,11809,11775,11792,11803,11806,11598,11599,11601,11602,11603,12976,12977,11600,12979,11025,11150,11153,10986,10987,11758,11759,11760] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [9019,456,427,428,429,430,9036,8371,8373,455,457,453,5115,5117,9018,5594,5591,5595,5252,5031,5251,5103,5194,5195,5208,5249,8331,8351,8353,5575,5044,5047,5048,5051,5101,5109,5098,5584,5585,5586,5278,5030,5573,5265] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [2708,8033,2707,2709,1059,1061,2768,2787,2788,2705,2834,2704,11362,11363,11364,1060,11437,11418,8098,11349,11419,11350,11287,11288,11289,11584,11582,2851,2791] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [13099,13105,14532,14531,14530,14545,14591,13119,13120,14476,14478,14549,14550,12613,12616,12617,12618,12601,12600,12603,12612,12557,12558,12560] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [5535,13972,5506,5382,5383,5351,5379,8940,8938,8939,8941,8976,13970,13987,13988,13978,13979,5548,5554,4991,8277,8278,8974,8975,5395] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [7678,7688,5533,5534,8300,8302,13909,7668,13908,13910,7689,7691,6589,14095,14097,14096,13955,13957,13954,13969,13970,5535,6607] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [9271,8655,8656,9269,9248,9263,9331,9333,9334,963,982,983,984,9250,3124,3125,964,3145,3162,3163,961,10278,10275,10276,10277,10202,10203,2481,2478] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [8923,8855,11688,8917,8921,8860,9482,9481,9480,11669,11665,11682,8804,9537,9461,9419,8904,8859,240,257,9536,9603,11691] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [1907,1920,1921,1986,1988,2288,2290,2291,2983,2289,1908,1984,1463,1462,1985,1987,2356,2357,2358,2979,2980,1476] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [11027,12996,12997,12998,12999,11067,11069,10556,10560,10574,11026,11068,10549,13039,13038,13040,12995,11093,11153,11760,11066,11074,13024,13025,11152,11077] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [12800,12964,12965,13104,12509,13184,13102,12554,12558] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [7748,7749,7750,4587,4588,5112,5150,5151,8352,8354,8336,8398,8411,8401,8388] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [10889,10868,2792,10266,10305,10306,1030,2493,2468,2723,2724,2727,2729,2731] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [2966,2979,3000,1473,1476,1477,1478,1479,2414,10775,10786,10788,3002,3064] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        