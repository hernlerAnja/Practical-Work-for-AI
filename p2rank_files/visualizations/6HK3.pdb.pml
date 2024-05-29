
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
        
        load "data/6HK3.pdb", protein
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
 
        load "data/6HK3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1346,1195,1196,1323,1325,1177,1178,1179,1208,1219,1207,798,799,828,780,1339,1338,1322,1324,364,459,1318,1319,1317,1236,566,1235,1316,773,779,748,1340,1212,826,1471,1477,207,198,204,210,216,234,224,253,252,199,349,764,766,202,768,232,235,4249,4586,4592,4595] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [4240,218,4238,4232,4343,4370,4358,4359,4367,4368,4791,4215,4225,4221,4209,4382,222,4234,211,214,193,4607,4606,4351,4839,4842,4362,4823,237,238,239,708,374,664,375,228,387,390,709,672,673,245,246,194,4833,4810,4822,4820,4821,4354,4632] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1802,1805,2987,1806,1807,3620,3626,3574,1459,2981,2984,3030,2975,2979,3560,3562,2993,3001,3008,3010,3012,3029,3126,3971,3972,4272,3989,3990,3973,4013,4119,4001,4002,3593,4030,4261,4267,4268,4140,4258,4259,3363,4110,4111,4112,3284,3540,3542,3547,4029,3564,3567,3141,4113,4116,4117,4118] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [3150,3023,2955,2971,3022,3036,3037,3039,3040,3041,2015,2017,3149,1592,3484,1580,3005,3013,3014,3502,3164,3166,3503,3445,3446,3151,3152,3134,3519,2932,3427,3428,2803,2804,2930,2954,3454,3501,3485,1435,1440,1442,1561,1578,1577,1425,1429,1431,2995,2999,3016,2988,1448,1444,2991] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [356,630,631,725,4834,29,42,259,260,261,262,263,264,153,28,357,155,258,373,375,648,649] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [3638,3637,3762,3800,3673,3730,3675,3738,4051,4035,4037,4042,4048,3798,4070,4073,3763,3764,5324,4050,3737,3661,3663,3586] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [966,968,969,970,1254,1256,1243,1006,1241,1004,792,844,1257,839,843,879,881,936,967] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [2659,2356,2357,2361,2660,2349,2338,2344,2347,1112,1624,1108,1109,1110,1116,1625,1117,1084,1626,1630,1622,1618,1619] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1482,1515,1501,1503,1210,1211,1212,1516,1761,813,815,1504,4294] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [4844,4845,4862,4864,4872,4634,4638,4639,4664] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        