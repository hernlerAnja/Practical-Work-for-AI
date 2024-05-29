
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
        
        load "data/3RGF.pdb", protein
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
 
        load "data/3RGF.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1339,1338,1335,1334,1344,1347,1348,1349,1350,512,540,772,773,541,617,770,771,267,268,269,395,245,248,790,410,618,1230,794,797,1231,824,792,1206] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.341,0.702]
select surf_pocket2, protein and id [1339,1361,1363,1338,1335,509,512,539,541,617,530,532,568,1140,505,507,1360,1097,609,1325,1342,1157,1151,1145,1096,1328] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.424,0.361,0.902]
select surf_pocket3, protein and id [1429,1431,842,912,1393,1395,1645,870,872,843,845,840,1193,835,837,1394,1417,1418,1419,1689] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.435,0.278,0.702]
select surf_pocket4, protein and id [4301,2698,2700,2710,2712,2713,2715,4308,3992,3947,3939,3950,4298,4300,3982,3983,3993,4017,3991,4029,4305,4306,3941,2693,2697,2683,2684,2681,2682] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.698,0.361,0.902]
select surf_pocket5, protein and id [3686,3689,3691,3693,3683,3702,3391,4798,4801,4824,4800,4838,4796,4797,4839,4777,3374,3375,3376,3377,12,4846,4836,4847,3747,3737,3738,3389,3749,3390,13,14,15] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.651,0.278,0.702]
select surf_pocket6, protein and id [2501,2503,2287,2272,2273,954,955,956,957,1661,2242,2243,958,2530,2531,2532,2536,2244,2238,987,953,2547] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.824]
select surf_pocket7, protein and id [3327,3360,2904,3354,3355,2903,3333,3337,3338,50,54,55,58,60,85,86,3329,32] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.533]
select surf_pocket8, protein and id [1512,1535,1536,1537,1460,1461,2386,2387,1498,1494,1497,1957,1995,1939,1942,2380,1958,2395] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.545]
select surf_pocket9, protein and id [4237,4241,4244,4234,4273,2823,2857,3032,2998,2958,4231,4236,4676,4677,4637,2999,3000,4613,4614] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.278,0.318]
select surf_pocket10, protein and id [1895,1930,1882,1874,2155,2153,1927,1928,2366,2370,2371,1875,1878,2159,2354,2360,2330,2333,1926,2365] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.451,0.361]
select surf_pocket11, protein and id [3296,3297,2883,2884,2990,2991,2992,3033,3346,3263,3260,3026,2985,2989,3030,3021] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.459,0.278]
select surf_pocket12, protein and id [4712,4732,4227,4686,4681,4684,4687,4689,3040,3078,4734,4735,4736] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.729,0.361]
select surf_pocket13, protein and id [971,2615,2616,2649,2651,2639,2640,948,902,2620] 
set surface_color,  pcol13, surf_pocket13 
set_color pcol14 = [0.702,0.675,0.278]
select surf_pocket14, protein and id [3084,3621,3623,3391,3061,3386,3388,3419] 
set surface_color,  pcol14, surf_pocket14 
   
        
        deselect
        
        orient
        