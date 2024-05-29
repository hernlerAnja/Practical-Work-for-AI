
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
        
        load "data/P42685.pdb", protein
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
 
        load "data/P42685.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1953,2105,1950,2007,2346,2913,2477,2478,2348,2992,2460,2462,2120,2121,2122,3000,3023,2114,2008,2117,2271,2994,2463,2496,2500,2999,3001,2885,2893,2899,1949,1951,1955,1956,1961,1963,1965,1966,1992,2532,2914,2526,2529,2560] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2858,3028,3029,2862,3057,3074,1985,1987,1988,1966,1969,2998,2997,3001,2885,2898,2899,2887,2888,2860,3204,3185,3197,1977,3184,2121,2122] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [2713,2715,2716,2717,3962,3964,2721,2696,3922,3925,3963,3960,2714,1008,1010,3958,1041,981,2332,1016,1017,1018,2333,990,991,1188,2742] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [2923,2487,2502,2482,2492,2322,2980,2981,2959,2958,2926,1723,1733,1736] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [963,973,974,912,1701,408,409,1696,1699,837,1731,1732,397,911,910,955,1700,966,968,964,1049,1050,1714] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2056,2064,2065,1891,1796,1798,1777,1804,1793,1854,1856,1859,2054,1893,1861,1864,460,458,475] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [3804,3799,3801,3802,3377,3407,3638,3643,3648] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        