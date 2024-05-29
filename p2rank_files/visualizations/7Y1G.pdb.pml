
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
        
        load "data/7Y1G.pdb", protein
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
 
        load "data/7Y1G.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1255,1278,1271,1395,333,4573,1421,4576,292,295,309,311,4574,454,455,456,612,1393,1408,1409,471,1238,1419,1412,284,287,4643,4644,4565,4568,4569,4608,4556,554,555,310,586,1422,573,581,582,575,4607,4609,300,1295,278,331,332,1294,1375,1377,1379,439,854,851,853,858,1266,906,275,281,274,276,280,2531,2529,282,2558,4692,4694,905,4561,4563,1269,2532,879,882,870,876] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [1546,1554,1555,1556,1844,1883,1843,4572,4273,4557,4564,4617,4567,1251,1540,1565,1270,1253,1547,1539,4575,957,958,1776,3674,1803,1816,1817,1262,1775,923,921,925,4559,1840,4271,4272,3975,4255,4256,4257,4282,1849,4262,4263,4264,3664,3983,3992,4492,4493,4533,4534,1847,3993,1846,3633,3635,3636] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [3164,3165,3260,3023,3024,3283,3976,3977,3960,4144,4000,4118,4120,4146,4147,3988,4102,3614,4016,4017,5266,5268,5269,3590,3617,3989,3027,3028,3163,3025,3026,3180,3020,3022,2987,3044,3045,3046,2989,2991,2994,3005,2988,3319,3318,3320,4133,4134,3281,3282,3289,4100,4104,3564,3565,3148,3290,3294,4137] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [930,4510,3708,2539,4712,4728,2511,4720,4715,972,965,931,938,940,2517,2520,2515,4525,4526,2538,4730,3706] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [1805,1807,1814,1808,1809,1999,1821,1840,1958,1959,1981,1982,1978,5276,1997,1962,3634,3636,3616,3638,3642,5275,5277,3641,3640,3683,5254,5270] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [906,275,281,2529,2538,4694,905,4563,904,4526,931,2517,898,930,2539] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [3396,2747,2756,5099,3858,3859,3860,3861,3834,4982,2748,3394,5103,5062,5060,5061,5073,5077,5097,5098,5100,5102,2743,2744,2745,2746,2742,2724,2726,2727] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [1112,2336,2372,2348,2352,2373,2374,2375,2376,2377,2378,2253,2354,34,23,22,24,25,26,21,1140,1108,1137,1138,1141,686,688,1144] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [999,936,1068,1069,1301,1303,2444] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [3854,3886,4940,3884,3892,3856,4383,4384,4416,4947,3888,4411,4413,4909,4381] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1170,1696,1164,1166,1667,1699,1132,1134,2218,1136,2219,2180,2211,2214] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [3791,3652,3656,3623,5175,4023,4025] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [3717,3656,3694,3703,3712,3722,5172,3750,3752] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        