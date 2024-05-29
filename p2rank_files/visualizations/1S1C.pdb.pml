
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
        
        load "data/1S1C.pdb", protein
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
 
        load "data/1S1C.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [233,235,240,221,226,229,230,231,81,200,201,1264,116,199,459,462,80,104,108,109,110,111,256,115,102,103,450,251,255,82,83,91,906,907,908,92,93,94,95,896,897,898,905,904,1255,1251,924,925,1260,1262,1256,901,237,931,932,933] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2316,2317,2318,1505,1527,2666,2671,2673,1610,1611,1612,2662,2667,1623,1631,1636,1637,1640,1616,1632,1521,1488,1491,1492,1496,1494,1502,1503,1506,1510,1513,1514,1515,1852,1644,1641,1642,1648,1656,1651,1662,1667,1519,1520,2311,2312,2307,2335,1861,2319,2336,2343,2344,2675] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1685,1952,1954,3348,3352,1683,1680,1839,1951,1961,1837,1702,1703] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3584,3583,3585,3586,3587,3024,3027,3618,3619,3621,3623,3562,3057,3059,3060,3054,3055,3056,3058,3026,3020,3023,3022,3590] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [275,3918,274,291,428,540,541] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        