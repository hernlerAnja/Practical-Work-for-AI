
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
        
        load "data/7B7N.pdb", protein
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
 
        load "data/7B7N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6570,6239,6242,6245,6588,6238,6571,173,204,6424,6428,6426,6586,6567,6577,6620,6622,1347,6423,6246] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [2485,2486,2487,2488,2489,2387,2399,2383,2382,2496,2497,2490,2491,2492,2203,2207,2210,2213,2572,2502,2504,2556,2558,2255,2271] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [6925,6926,6928,2687,2769,2776,2773,6766,6767,6768,6739,2721,2778,2692,2726,2730,2729,6713,6952,2763,2766,2768,6921,2760] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1870,1878,2861,1866,1872,1875,3470,3502,1896,1900,3511,2871,3086,3453,3116,3117,3083,3085,3449,3477,3478,1902,1897] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [4639,4640,4641,4642,5858,4970,6019,6020,6021,6053,5815,5813,5814,6074,6098,6100,6091,5795,6121,6050] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [2004,2009,2005,2006,2024,2025,2080,2081,3872,2039,2040,3855,3851,3856,2002,2011,2090,2092,2000,1990,1999,2001,1979,1980,1981,1982] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5134,5136,5158,5159,5150,4460,5152,5157,4507,4532,4469,4508,4571,4423,4424,4425,4429,4430,4435,4572,4449,4447,4457,5131,5132,4534] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [6220,6221,6141,6143,5700,5985,5705,5708,6041,6043,6045,5984,5737,5746,5745] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [6293,6294,6298,6299,1423,1425,6292,655,656,623,6286,6502,6499] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [438,440,854,911,1104,1106,829,848,796,782,897,831,899,786,864,851,909] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        