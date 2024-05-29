
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
        
        load "data/3ZRL.pdb", protein
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
 
        load "data/3ZRL.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [205,256,257,258,238,240,367,369,370,744,769,760,762,207,354,568,749,776,821,822,203,209,239,212,237,1218,1317,1318,1321,1322,1324,371,460,795,1206,1234,1235,1316,1207] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [4129,3064,3066,3115,3116,3117,3062,3068,3449,3643,4128,3213,3654,3228,3638,4210,4215,4216,4218,4209,4211,4212,4100,4112,4101,3229,3230,3097,3098,3099,3663,3670,3656,3689] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [2478,2481,2509,2510,2511,2512,2537,2780,5338,2482,5309,5328,5331,5332,5330,5628,5313,5312,5314,5605,5606,5310,5311,5283,5282,2783,2465,2477,2468,5646,5648,5329,2508,2534,2536] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [5400,5644,5647,5648,5640,5637,5642,5329,5341,5345,5373,5374,5375,5376,5401,2445,2465,2466,2764,2763,2477,2468,2474,2335,2443,2446,2447,2448,2449,2450,2742,2417,2418,2419,2482,5372,5398] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3616,3238,3239,3512,3513,2869,2882,3127,3128,3126,3125,3531,3530,3008,3033,3220,3221,3010,2868] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3861,3862,3863,5456,5463,5464,3773,3774,3761,3763,3860,3897,3899,4135,4137,3737,3736,4147,4149,5466,4150] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [4517,4518,4519,4526,4527,4530,4005,4525,4002,4003,5285,5297,5290,5597,5598] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [265,267,379,380,631,632,650,19,32,149,151,362,18,174,361,721] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1619,1613,1617,1621,1622,1625,1612,1614,2421,2424,2426,2433,2733,2734,2404,2414,2415,1649,1620,1107,1108,1081,1111,1109] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1240,1253,1255,1256,1247,967,968,969,1003,1005,1242,1278,1275,843,878,880,842,2602] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [2166,2160,2154,2168,2136,1893,1889,2132,2171,2361,2349,2363,1956,1955,2370,5131,5126,5143] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1218,1324,1323,239,237,235,234,1177,1194,1195,1477,1176,1178,1345,1460,1461,1462] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4404,4383,4402,4414,4401,4403,4661,4087,4381,4382,4105,3705] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        