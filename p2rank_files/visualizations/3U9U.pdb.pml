
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
        
        load "data/3U9U.pdb", protein
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
 
        load "data/3U9U.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1902,1900,2420,2429,2433,15606,815,817,15785,15755,409,15740,15746,2437,2439,15621,15622,406,468,469,467,389,466,1908] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.373,0.702]
select surf_pocket2, protein and id [2092,2093,6002,808,2103,15777,15778,15768,5991,6021,6026,5990,5992,5993,5020,5021,5022,6001,4995,5004,5019,4389,4974,4978,4999,4992,4996,4997,849,2144,775,790,791,788,789,233,797,798,800,829] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.361,0.380,0.902]
select surf_pocket3, protein and id [3846,3781,3782,3783,3784,3785,3811,3826,3616,3798,3801,5805,4173,4174,4193,3786,3787,3788,4195,4172,3618,5767,5802,3845,3847,5786,4196,4177,5247,5249,3844,3767] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.337,0.278,0.702]
select surf_pocket4, protein and id [4636,4648,4783,6106,4629,4630,4649,4782,4435,4784,12716,4781,12713,12715,12709,4628,5933,5934,4448,5935,12720,12721,6348,6349,6350,6373,6361,6363,6365,6103,6105,12701,12702,12704,12698] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.533,0.361,0.902]
select surf_pocket5, protein and id [8593,8888,8594,8889,8651,8872,8856,8720,8730,8731,8886,8893,8900,8434,8435,8436,8445,8541,8733,8554,8573,8542,8546,8552,8447,8860,8558,8851,8857] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.490,0.278,0.702]
select surf_pocket6, protein and id [12736,12739,12740,12752,12753,12745,12668,12672,12787,12775,12783,12208,12663,12667,12734,12666,12207,12616,12664,12665,12604,12605,12638,12613,12607] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.725,0.361,0.902]
select surf_pocket7, protein and id [6037,6038,6011,6008,4489,6461,6449,6450,9261,9262,4364,4485,4486,4493,4381,4382,4487,4363,6035,6031,6030,2133,4700,4703,6444,6442,6443,4488,4490,6051] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.643,0.278,0.702]
select surf_pocket8, protein and id [1251,1252,1258,1268,1270,1271,3002,2758,2759,3001,3003,3026,1242,3018,3016] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.878]
select surf_pocket9, protein and id [2691,3100,3102,3103,3108,3109,2664,2694,2690,2689,1112,3095,3096,3097,3098,2704,1111,1322,1325,3114] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.608]
select surf_pocket10, protein and id [13094,13095,13099,13111,13408,13406,13422,13424,13425,12998,13000,13429,13146,13145,13147,13286,13274,13204,13126,13127,12989,13407,13283,13284] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.682]
select surf_pocket11, protein and id [2587,1405,1406,1070,2588,1403,1404,2759,1252,1269,1271,1254] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.278,0.455]
select surf_pocket12, protein and id [12058,12060,12057,12059,12068,12283,12255,12257,12256,12258,11980,11982,11990,11992,12019,12021,12023] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.361,0.490]
select surf_pocket13, protein and id [15790,15801,15805,15807,15809,4987,1912,4982,4983,4993,4997,5000,5007,4858,15772,15766,15771,4835,4841,4842,4826,4855,4854] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.278,0.306]
select surf_pocket14, protein and id [15677,15569,15574,13032,13033,15671,15672,15589,15590,13031,15555,15570,15571,15564] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.424,0.361]
select surf_pocket15, protein and id [7178,8315,8296,8302,8352,8373,8320,8355,8632] 
set surface_color,  pcol15, surf_pocket15 
set_color pcol16 = [0.702,0.408,0.278]
select surf_pocket16, protein and id [12908,13184,13186,12872,12873,12855,11539,11742,12864,11740,11741,11546,12871,12905,13175] 
set surface_color,  pcol16, surf_pocket16 
set_color pcol17 = [0.902,0.620,0.361]
select surf_pocket17, protein and id [5439,4186,4207,4227,4168,4169,4167,5438,5440,5489,5491] 
set surface_color,  pcol17, surf_pocket17 
set_color pcol18 = [0.702,0.557,0.278]
select surf_pocket18, protein and id [12527,12526,12515,12567,11855,12157,12151,12514] 
set surface_color,  pcol18, surf_pocket18 
set_color pcol19 = [0.902,0.812,0.361]
select surf_pocket19, protein and id [9024,8971,9187,9189,9173,9019,8974,9671,9452,9453,9655,9673,9028,9029] 
set surface_color,  pcol19, surf_pocket19 
set_color pcol20 = [0.690,0.702,0.278]
select surf_pocket20, protein and id [1751,2787,2796,2790,2795,2523,3049,3050,1765,1764,2527,2780,2781] 
set surface_color,  pcol20, surf_pocket20 
   
        
        deselect
        
        orient
        