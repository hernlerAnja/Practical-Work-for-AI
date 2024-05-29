
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
        
        load "data/1FQ9.pdb", protein
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
 
        load "data/1FQ9.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3931,3932,3933,4229,4230,2643,3909,3910,2547,2624,2626,2627,2548,2549,1136,3953,3952,2565,1134,1132,2013,2014,2015,4266,4200,4201,2292,2294,2314,2180,2278,3917,2290,2562,2563,2590,2589,2591,2545,2312,2588,2326,4265,3929,4250,3883,3914,3924,3919,3920,3925,3923,3928,3950,3813,3814,4475,3945,4476,3843,3844,3845,3870,3871,3872,3841,1147,3876] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2244,2271,4188,2205,2206,2275,3916,3917,2280,2286,2290,4187,2314,91,93,78,105,106,2204,103,2237,2201,2230,2232,2233,2289,2296,2174,2175,2836,2311,2313,2306,2173,2176,95,96,972,974,4281,4280,4279,4265] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2890,2909,2910,698,699,681,1738,1739,1740,4526,4529,4513,3895,3897,3898,3901,3896,4301,4518,4522,2253,2256,2257,1720,1722,2662,2262,2649,2887,4548,4549] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [970,972,958,966,961,906,907,853,962,963,103,864,104,862,863,848] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3582,3316,3201,3219,3335,3336,3317,3651,3652,3653,3654,3655,3220,3596,3595] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [2003,2006,1975,1904,1905,1894,1947,1948,2016,1144,2007] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        