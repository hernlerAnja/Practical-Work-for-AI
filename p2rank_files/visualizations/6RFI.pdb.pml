
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
        
        load "data/6RFI.pdb", protein
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
 
        load "data/6RFI.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [203,205,688,697,705,750,202,211,213,214,201,721,717,718,1101,1199,220,221,342,343,1202,239,241,694,698,1117,240,327,670,672,669,671,667,668,1093,1194,1118,1193,759,797,789] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2972,3367,2951,2952,2948,2979,2980,3342,3343,2439,2441,2443,2445,2446,2453,2486,2488,2436,2437,2487,2942,3443,3448,3350,3442,2806,2807,2953,3366,2921,2586,2922,2923,2925,2574,2588,2590,2454,2456,2434,2440,2433,3004] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1577,1862,1863,1864,771,4088,4077,773,774,1585,1592,1570,4089,4090,3803,3796,4071,3811,3027,3025,3028] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [3013,2959,3004,3043,2434,2390,2392,2432,2433,3051,2964,2965,2971,2972,2436,2437] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3810,4040,4051,4053,3863,3864,3872,3884,3796,3809,3811,4048,1612,1610,1611,1628,4081,1625,1626,1627,1630] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1585,1612,1637,1638,1584,1592,1825,1827,1577,3837,3838,3852,1855] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        