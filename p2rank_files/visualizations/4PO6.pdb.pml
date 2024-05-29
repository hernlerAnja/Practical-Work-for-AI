
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
        
        load "data/4PO6.pdb", protein
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
 
        load "data/4PO6.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [995,989,993,994,996,1018,984,986,1019,620,934,964,1927,1929,1946,1948,1949,1930,1931,1937,651,652,654,628,443,446,592,612,614,389,422,390,391,426,404,427,441,1037,1911] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [2773,2880,2865,2867,2868,2875,2878,2902,2962,2952,2953,2944,3133,3134,3135,2737,2854,2853,2771,2774,3776,3778,3779,348,313,334,337,314,2961,2869,3175,3165,332,341,342,345,346,211,241,3146] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [1754,1761,1764,1825,1722,1724,1729,1757,1726,1752,1750,1710,1716,1233,1234,1266,1242,1826] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [434,2631,2629,2632,485,487,488,438,463,566,547,537,418,399,456,565,546,2622,2649] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [3699,3700,3118,3579,3524,3550,3551,3552,3553,2925,3714] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2476,2478,2595,2460,2089,2090,2091,2095,2102,2098,2104,2001,2002,2003,2004,2005,2579,2580,2581,2469,2470,2000,2594] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [1242,1826,1827,1240,1210,1208,1209,1233,1714,1231,1713,1682,1683,1684,1685,1686,1687] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1284,1283,1251,1252,1430,950,954,973,976,977,978,982,979,1014] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1402,1405,1406,1407,1414,1623,1624,1621,1663,1374,1651,1653,1660,1661] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        