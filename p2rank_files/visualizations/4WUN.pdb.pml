
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
        
        load "data/4WUN.pdb", protein
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
 
        load "data/4WUN.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1264,1265,600,1341,187,188,190,1342,1343,185,186,180,182,157,159,161,162,163,164,158,167,733,745,740,757,1348,601,715,719,714,210,343,209,211,355,184,357,599,516,518,1359,475,520,473,359,1350,1358,1360,1361,750,751,761,758,796,768,765] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2436,2437,2912,2546,2394,2415,2384,2385,2386,2390,2391,3435,3436,2413,2414,2417,2965,2718,2795,2911,2934,2937,2955,2958,3358,3359,2954,2942,2992,2993,2916,2388,2389,2794,2438,2412,2558,2560,3442,3437,2686] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2166,2167,1865,2139,991,1024,1631,1889,1864,1859,988,1016,1848,1853,1854,1855] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [1848,1849,1852,858,971,3577,3578,3579,859,857,1016,1646,1647,1626,973,968,969,976,886,1635,1637,887,1636,991] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [2051,2047,1533,2034,2037,2039,2040,2055,1105,1109,1107,1135,1137,1136,1139,1496,1497,1498,1499,1501,1503] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4012,4008,4014,4041,4189,4191,4190,4122,4121] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        