
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
        
        load "data/5KKS.pdb", protein
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
 
        load "data/5KKS.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1088,691,692,693,1234,1235,1651,1652,1653,1728,1625,643,638,804,634,2936,2938,2940,1261,640,1287,1284,1285,1286,2941,1307,2925,1087,1239,1257,982,1729,1730,819,821,1733,1736] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4507,4509,4847,4508,3911,3858,3859,3861,4457,3910,3852,4955,4958,4204,4037,4039,4239,4456,4951,4874,4950,4482,4483,4502,4873,4875,6162,6164,6166,6151,4461,4308,4309,4310,4022,4479,3856,3864] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [109,111,3400,47,77,78,3407,3408,3409,6391,6394,6396,6397,6390,3759,3760,3763,3766,6395,4347,3797,3956,3743,35,36,37,40,41,87,52,54,6411,53,6402,14,16,49,51,4349,45,48,44,12,3326,3332,3334,3351,3354,3355,3335,3401,121,3336,3430,3749,3395] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [937,939,940,663,670,672,1598,1614,1888,1882,662,673,819,820,821,1735,1736,1757,674,655,676,677,658,818,924,938,908,923,1750,1751,1758,935,936] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4184,4186,6356,4176,4177,4188,4224,3377,4214,4223,3359,3360,3415,3395,3373,3369,4255,3353,3358,3380,428,429,444,4185,4181,431,4178,4179,4180,6349] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3108,925,877,909,910,3614,876,882,884,905,3094,3097,888,3590,3579,3612,929,3096,949,951,960,926] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4161,4162,4055,3888,3890,3894,3863,3864,3876,3880,3881,3892,3893,3872,3873,4971,4972,4974,4156,4157,4159,4973,4975,4979,4980,4139,4140,4957,4037,4038,4039,4958,3911] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [135,177,197,3121,3136,3146,992,1001,140,141,151,162,142,155,159,1000,1002,191,157,3173,3114,3662,3119,963,964,962,957,956] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [306,308,3017,3018,3022,3012,3013,3006,3003,2997,3004,3002,1169,3084,1165,1166,266,268,265,280,264,307,3072,3075,3030,3031] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3483,3524,3525,3526,3498,6232,6238,6307,6310,6241,6237,6248,6265,6266,6298,3484,3486,6318,4387,4388,4391] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [778,780,3233,1126,1127,798,760,736] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [2603,2604,1508,2613,2607,1527,2040,2041,2042,2076,2583] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3233,1125,1127,3234,3270,3271,3272,3208,3210,3186,3269] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        