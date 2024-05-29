
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
        
        load "data/4F7N.pdb", protein
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
 
        load "data/4F7N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [571,570,1371,1372,1376,646,647,1384,1385,1386,1387,1267,1268,237,854,2712,2713,2714,797,800,240,298,425,798,801,802,803,1383,297,299,242,243,245,248,442,542,1375,438,440,827,648,807,824,868,1243,1244,855,887,885,1394,1395,1390,1391,1231] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [870,1230,1228,1458,872,911,1239,905,908,909,1673,1406,1409,902,1240,1244,873,875,910,1232,1231,1445,1447,1717,942,1459,1423,1446,1422] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [571,569,570,1369,1372,1376,647,1362,560,562,598,528,529,531,534,535,538,539,540,276,277,542,1375,275,509,639,1379,1182,1190,1205,1188,1194,1196,1133,1370,1177] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [4066,4103,4108,4109,4063,4055,2814,4407,4408,2816,4107,4104,4414,2826,2828,2831,4416,4415,4417,4419,4420,4098,4097,4133,2795,2798,2799,2800,2813,4058] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [3818,3819,3823,3799,4933,4910,4905,4906,4907,4911,3507,3805,3807,3809,3822,4886,3490,3492,7,9,3491,3493,4956] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [1689,2279,992,993,994,995,2280,2538,2540,2324,2568,2309,991,1014,1015,990,1024,2584] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [3381,3383,3146,4352,3373,3375,3176,3413,3000,3106,3108,3462,3137,3145,3147,3149,3142] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [3443,3449,3476,3018,3019,3453,3471,3468,3470,25,47,50,52,3445] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2643,2629,2631,2652,2653,2624,1008,2634,2687,2688,2676,2677,984,985,986,2651,2657,2632] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [1525,1540,2032,1488,1489,1564,1565,2423,2424,1995,1976,1979,1994,2020,2031,2019,1998] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        