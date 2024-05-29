
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
        
        load "data/6TWY.pdb", protein
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
 
        load "data/6TWY.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5632,5633,5639,5603,5604,5465,5674,5490,5605,2298,5664,1980,5665,1927,5432,5433,2258,2259,5455,1929,1931,1981,1953,1924,1928,1930,1926,1955,1956,1958,1959,2320,2291,2327,2328,2294,2297,2329,1990,1991,1979,5593] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [2123,5552,2097,2120,2121,5514,5550,5548,5520,5523,5579,5580,5582,5484,5486,2270,5515,5542,5543,5489,2268,2269,5487,5488,2298,2130,2154,2155,2304,2306,2330,2339,2297] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [210,583,621,581,618,604,605,606,161,216,201,198,206,207,208,204,611,187,609,190,177,180,183,194,195,577,579,584,221,222,556,461] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [1649,1651,1652,1637,1646,2730,2731,2003,2352,2004,2674,2353,2354,2703,1625,2005,1967,1657,1658,2021,2034,2032,2036] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [4980,4983,4985,4986,4992,5337,5338,5339,5689,5687,5688,4959,6058,6001,6030,4971,6057,5301] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [4069,4071,3798,4167,3779,3780,4459,3784,4455,4457,4076,4198,4171,4494,4496,4199,4202,4204,4465,4468] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [6137,6139,6166,6500,6430,6448,6498,6497,6499,6523,6524,6487,6488] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        