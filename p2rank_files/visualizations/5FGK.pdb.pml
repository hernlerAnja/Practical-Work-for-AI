
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
        
        load "data/5FGK.pdb", protein
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
 
        load "data/5FGK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [266,267,268,1384,1386,228,233,1242,1256,1378,892,1385,539,1408,568,1379,1380,433,1383,264,265,262,263,289,288,290,416,231,798,800,429,431,797,799,1274,1275,859,860,2702,890,829,832,2700,2701,2699,644,645,1243,873] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [875,877,878,915,870,872,910,913,1236,1237,1238,1239,905,907,1229,880,1463,1464,947,1450,1452,1722,945,1678,1461,1426,1427,1428] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4055,2784,4047,4098,2817,4044,2802,4396,4397,2803,2820,4405,4052,4403,4404,4406,4408,4409,4096,4097,4087,4086,4088,4122,4123,2787] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [1023,2556,2572,1694,2312,2528,990,2526,2308,991,992,994,2275,2297,2298,2256,2267,988,989] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [3496,3798,3796,4895,4899,4922,4896,4898,3788,4945,3854,3479,3480,3481,3482,3842] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [3460,3007,3459,3432,3466,3434,3009,31,37,38,41,33,70,71,43,78,72,3005] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [2772,4032,4031,2760,2768,4033,4036,3587,3597,3598,3599,2771,528,3296,4056,4059,3293,3294] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [3402,3362,3364,3095,3097,3451,3162,3165,3372,3131,3135,3138,3125,3124,3126] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1493,1494,1530,1545,1570,1531,1527,1569,1497,2411,2412,2420,2019,2020,1982,1983,1986,2008,1964,2405] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [1305,392,395,384,399,387,1291,1292,1293,1295,1298,1299,2693,1290,820,834,838,824,841] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [195,194,442,771,188,192,198,299,300,301,281,438,440,441,279,280,282,283,2746,2747,2748,2745] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [391,667,668,813,609,617,620,621,1322,1347,1365,1321,1323,650,651,815] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4325,4782,4784,4785,4787,4814,4779,4826,4810,3183,4830,4832,4834,3182] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        