
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
        
        load "data/4YVC.pdb", protein
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
 
        load "data/4YVC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6319,51,53,54,4293,6330,52,45,47,48,49,37,44,3712,12,14,3901,3902,9,6,7,15,16,3916,78,3695,6320,6322,6323,6324,6325,3705,3706,3709,3743,3710,3740,3741,3742,41,3689,111,3346,3347,87,3341,3354,3355,6340,3280,6338,6339,3300,3301,6318,3297,3282] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.349,0.702]
select surf_pocket2, protein and id [4793,4819,4820,4821,3802,4453,4454,4455,6108,6110,3798,6116,6120,6113,6117,4402,4403,3968,3856,4897,4896,4255,4407,4429,4430,4425,3835,3837,3810,3857,3804,3807,6136,4794,4469,4797,3983,3985,4901,4902,4904] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.404,0.361,0.902]
select surf_pocket3, protein and id [1199,1616,1196,804,1617,1615,1203,1225,1226,638,2900,2902,2904,1224,1221,1692,1693,1198,1051,1052,1697,1589,1700,1578,1590,1249,1250,1251,2895,640,634,819,820,821,692,693,673,641,643,646,671] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.416,0.278,0.702]
select surf_pocket4, protein and id [4127,4130,6284,4132,429,6277,4124,4125,4126,4170,4141,3361,444,4160,4168,4169,3299,3315,4201,3318,3319,3323,3326,3305,3314,3306,428] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.663,0.361,0.902]
select surf_pocket5, protein and id [155,197,3060,923,926,3593,158,159,162,920,921,966,176,177,150,151,154,135,140,142,143,144,3067,3082,928,956,965,3119,3092,191,3595,922,925,927,3594] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.616,0.278,0.702]
select surf_pocket6, protein and id [4085,4086,4107,4108,5034,3831,3827,4919,4102,4105,4151,4917,4918,3984,3985,4903,4904,4926,3832,3833,3835,4921,4067,4069] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.878]
select surf_pocket7, protein and id [736,1090,797,798,780,3177,3179,3189,778,760,1091,3132,1076] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.584]
select surf_pocket8, protein and id [264,265,266,306,308,280,3030,3021,1129,2949,2952,2959,1130,1133,2948,2943] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.620]
select surf_pocket9, protein and id [902,898,899,900,901,903,904,1713,1722,667,669,671,663,664,1699,1700,821] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.380]
select surf_pocket10, protein and id [3429,3470,3471,3472,6160,6165,6166,6238,6169,6193,3444,3432,4334,4337,6247,3430] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.361,0.361]
select surf_pocket11, protein and id [3866,3993,4378,4379,4356,4358,3726,3865,3747,3748,3880,3769,3770,3976,3724,3725] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.380,0.278]
select surf_pocket12, protein and id [2004,2005,2006,2577,2547,2568,2571,2567,1491,2040,2043,1472] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.620,0.361]
select surf_pocket13, protein and id [1266,1592,1877,1879,2122,1261,1287,1265,1578,1593,1289,1290,1853,2165,1866,1867,1868] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.584,0.278]
select surf_pocket14, protein and id [4555,5905,4554,4556,4557,4558,5992,6005,6006,4586,5901,5902,5912,5914,4595,4598,5986,5987,4588] 
set surface_color,  pcol14, surf_pocket14 
set_color pcol15 = [0.902,0.878,0.361]
select surf_pocket15, protein and id [3924,3942,3944,15,16,25,4294,4295,6330] 
set surface_color,  pcol15, surf_pocket15 
   
        
        deselect
        
        orient
        