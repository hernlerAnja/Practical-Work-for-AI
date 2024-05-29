
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
        
        load "data/4RLO.pdb", protein
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
 
        load "data/4RLO.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4391,4716,6213,6214,6217,4374,4375,4380,4381,4387,4753,4715,4353,4354,4373,4344,4345,4714,5155,4428,4429,4427,6207,6195,6165,6196,5998,5999,5254,5256,5243,5244,5252,4331,5242,4327,4328,4329,4332,6166,6000,5209,5210,4685,5204,5171,5208,5248,5207,5917,5966,5916,5948,5885,5961,5964,5965,5967,6251,6237,5962,5963] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1120,898,1136,287,544,188,189,190,205,192,193,1174,1175,1169,1172,1156,288,573,208,286,2134,2135,2121,2122,2131,2137,1904,1954,1955,1956,207,206,1221,1218,2119,575,2136,574,234,235,670] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [5642,5644,7664,7716,7644,7670,7671,7715,4825,5648,5688,7630,7652,7660,7655,5689,5694,5695,5698,5690,7643] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [2487,2525,3592,2505,2490,3593,2412,3511,2410,3519,3522,2504] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2006,2008,915,1141,2083,1992,823,824,839,914,840,3971] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [3048,6540,6541,6543,6463,6464,6465,7540,6558,7613,7614,7542,3069,6443,6460] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [5520,5532,7856,8035,5530,5482,7835,7834] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2717,2796,2718,2776,1360,6352,6354,1251,1253,1308,1250,1325,1891,1892] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1486,4058,4059,4060,4028,3813,3835,4014,1438,1448,3814] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        