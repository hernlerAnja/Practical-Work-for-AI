
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
        
        load "data/6J6Y.pdb", protein
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
 
        load "data/6J6Y.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5992,5994,7413,7414,7397,803,818,819,7242,7255,7257,7680,5999,6004,6005,6009,7633,7634,5991,6010,6011,6012,6013,6014,7617,6000,6020,6021,7421,7422,802,5996,7631,7632,7646,5993,5995,7635,6116,6127,6132,6118,6119,5790,5794,5977,5979,7615] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [3260,3431,3264,3274,3413,1991,1992,4805,2145,2146,2147,1796,1798,2005,2006,2008,2028,1996,1997,1808,2133,1795,1802,3272,3438,3439,3666,4788] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [5941,5942,5943,5947,2319,5944,1959,2248,2263,2318,5945,2332,2333,2334,5916,5949,5969,1918,1922,1957,1961,1930,1931,1955,1956,1958,6305,6249,6303,6304,5908,5913,5917,5904] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [1069,1549,1595,3150,3131,1047,3132,2645,2646,1580,2621,3049,3051,1578] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [5536,5581,5055,7114,5564,6604,7032,5566,5575,7044] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4349,4350,4351,4356,4728,7077,4337,4357,4628,4629,4706,5207,5209,7085,4727,7071,7089,7098,7088,4608,4609,4610] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [615,3102,3106,3115,3088,3094,3105,1221,613,614,1223,356,361,357,358,363,364,634,711,733,633,732,344] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [6382,7123,7126,7117,7120,6386,7121,5122,5125,5118,7112,7059,7103,7104,7105,7107,5132,5230,5237,5121] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [1975,1989,5620,5621,5622,4821,1987,2144,4825,4819,4820,2205,2206,2223,2225,2204,2153] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3564,3566,3783,3532,3821,3822,3556] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        