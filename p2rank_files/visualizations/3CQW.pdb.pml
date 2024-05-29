
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
        
        load "data/3CQW.pdb", protein
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
 
        load "data/3CQW.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [162,163,317,316,154,156,161,137,138,158,724,1273,1274,1279,1277,298,299,300,301,458,1280,1292,723,405,423,425,406,429,434,421,1293,1276,1142,1126,1168,1301,1302,1143,2737,2738,2727,2733,2735,2736,2739,427,1303,2754,2750,1270,1271,284,1183,1272,176,177,178,1184,120,122,2477,2479,575,577,728,750,746,128,164,119,125,2517,130,131,2518,1156,1167,781,782,783,1155,1157,2722,2716,2714,2715,801,2462,2482,2472,2487,2489] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [1555,1557,1358,1558,1535,1546,1529,1547,1372,1360,1565,1561,2106,2055,2056,2063,2064,2102] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [428,1303,1417,1393,1394,2758,1318,1398,1396,1307,1299,1116,426,418,449,417] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [1772,1774,1786,1434,1814,2749,1813,1410,2745,2747,2763,2746,2744] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        