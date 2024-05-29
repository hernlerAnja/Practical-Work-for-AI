
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
        
        load "data/6QTG.pdb", protein
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
 
        load "data/6QTG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [274,294,295,296,237,239,242,234,437,539,800,1368,273,1234,245,1369,799,1361,1233,1257,1256,1258,852,2683,883,2681,2682,797,422,815,821,824,817,644] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1219,1220,1218,1229,867,869,870,872,862,864,901,902,1395,1430,1418,1419,1393,1394,1431,1689,1645,1690,937,938,939,1234] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2896,2931,4282,4284,2870,2866,2897,2898,2901,2903,3008,4272,4277,4274,4276,4653,2868,4271,3042,4262,4716,4717,3045,3046,3041,3005,3047,3007,2929,3076,3035,4679] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [2731,3988,3990,2738,3986,4339,4340,2744,2745,2759,2760,2762,4065,4027,4029,3994,4038,4039,4040,4064,4338,4341,4345,4346,4347,4349,4350,4351,3997] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [3374,3369,2951,3380,3384,3402,3407,3360,76,22,38,3376,44,47,49,77] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [3436,3437,3438,3738,3740,4864,4878,4879,3422,3423,3424,3784,3785,4838,4817,4836,4837,3733,3730,3749] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1963,1964,1460,1461,1497,1945,2000,1989,2401,2392,2393,1494,1537,1967] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [1933,1934,1936,2161,1880,1901,1904,2377,1881,2360,1884,2165,2371,2376,2366,2370,2372,2334,2336,2337,2338] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        