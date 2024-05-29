
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
        
        load "data/1JSU.pdb", protein
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
 
        load "data/1JSU.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1130,1132,1133,3458,3459,3457,3460,1145,1146,2769,2768,1147,2754,2770,2771,3424,3425,3606,3552,3581,3585,3580,3604,3489,3491,3575,3578,3550,3553,3579,3486,2760,2763,2756,2761,4276,4278,4280,1107,1108,1116,1117,1167,1169,3064,1103,1104,3065,2772,876,878,3395,3432,3433,3434,3431,3388,3389] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [3700,3715,3716,3751,3729,2791,2816,2853,3405,3408,3410,2795,3411,3417,3650,2612,3654,3660,3699,3701,3709,3678,3773,2819,2822,2825,3400,2466,2470,2475,2484,2483] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [553,997,109,1012,1011,1013,994,577,578,547,546,1039,549,1038,124,557,559,62,128,130,107,112,115,120,127,783,1022,2243,377,378] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [2083,2092,2093,1284,2084,2085,1729,1770,1769,1768,1726,1735,2077,1322,1334,1360,1355,1335,1344,1740,1763,1742,1338] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [2342,2343,2348,2349,3958,2345,2352,3954,3955,3496,3507,3509,3510,3921,3920,3946,3499,3497] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [268,298,264,265,271,159,157,158,174,176,4950,4953,4960,4961,4965,4966,4969,4971,1059,521,266] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [1366,1367,1138,1359,2307,1134,2346,2333,1114,1119,1140,2309] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [3300,3302,3263,3268,3269,3294,3262,4588,4589,3275,4557,4559,3273,3276,210,3264,205,209,237,199,470,472,473,192,4587] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [3354,3355,3356,3357,3359,435,3334,4607,3366,3368,439,440,441,442,456,452,4613,4614,4615,3330,3332,3333] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [2907,4547,4580,4582,2946,2948,2874,2875,3313,2916,3286,2915,2947] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [146,36,42,46,31,4752,4753,49,164,167,160,163,185] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [2050,1716,2055,2057,1717,2066,2056,2058,2021,2022,2044,1873,1874,1872] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [3676,4098,4154,4156,4158,4159,3674,3675,4122,4123,4124,4126,4129,3696,3685,4094,4096] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3646,3676,4099,4154,4155,4156,4158,4168,4130,4193,4194,3666,4196,3665,3642,4096] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        